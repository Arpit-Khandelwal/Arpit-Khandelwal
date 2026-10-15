#!/usr/bin/env bash
# Rewrites the block between the oss markers in README.md with pull requests to other people's
# repos: merged ones first, then open ones under review. Closed-unmerged PRs drop off on their own.
set -euo pipefail

USER_LOGIN="${USER_LOGIN:-Arpit-Khandelwal}"
README="${README:-README.md}"
# Space-separated repos to leave out, e.g. "someone/awesome-list".
EXCLUDE="${EXCLUDE:-}"
# Merged PRs from before this date are left out.
SINCE="${SINCE:-2024-10-01}"
# An open PR older than this many days is treated as abandoned and left out.
OPEN_MAX_DAYS="${OPEN_MAX_DAYS:-90}"
open_since=$(date -u -d "-${OPEN_MAX_DAYS} days" +%Y-%m-%d 2>/dev/null ||
  date -u -v-"${OPEN_MAX_DAYS}"d +%Y-%m-%d)

prs=$(gh search prs --author "$USER_LOGIN" --limit 200 \
  --json repository,number,title,url,state,closedAt,createdAt)

block=$(jq -r --arg me "$USER_LOGIN" --arg exclude "$EXCLUDE" --arg since "$SINCE" \
  --arg open_since "$open_since" '
  ($exclude | split(" ") | map(select(length > 0))) as $skip
  | map(select(
      (.repository.nameWithOwner | ascii_downcase | startswith(($me | ascii_downcase) + "/") | not)
      and ((.repository.nameWithOwner) as $r | $skip | index($r) | not)
      and ((.state == "merged" and .closedAt >= $since)
        or (.state == "open" and .createdAt >= $open_since))
    ))
  | (map(select(.state == "merged")) | sort_by(.closedAt) | reverse) as $merged
  | (map(select(.state == "open")) | sort_by(.createdAt) | reverse) as $open
  | ($merged | map("- ✅ **[\(.repository.nameWithOwner)#\(.number)](\(.url))**: \(.title)")) +
    (if ($open | length) > 0 then ["", "<sub>in review</sub>", ""] else [] end) +
    ($open | map("- 🔄 **[\(.repository.nameWithOwner)#\(.number)](\(.url))**: \(.title)"))
  | join("\n")
' <<<"$prs")

block_file=$(mktemp)
printf '%s\n' "$block" > "$block_file"
awk -v block_file="$block_file" '
  /<!-- oss:start -->/ {
    print; print ""
    while ((getline line < block_file) > 0) print line
    print ""; skip = 1; next
  }
  /<!-- oss:end -->/ { skip = 0 }
  !skip
' "$README" > "$README.tmp"
rm -f "$block_file"
mv "$README.tmp" "$README"
