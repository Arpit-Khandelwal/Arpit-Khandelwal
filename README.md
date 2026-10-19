### hey, i'm arpit 👋

backend & AI-systems engineer in bengaluru. i like the layer where software meets something hard — hardware, money, or a model that has to be right in real time.

- 🛠️ shipped the **[reskilll](https://reskilll.com)** platform end to end — auth (OTP + OAuth), CMS, judging & submissions engine, organiser dashboards
- 🤖 built agent orchestration for an AI concierge at **avici money** — tool calling, task routing, multi-step state
- 🔐 SDE at **hewlett packard enterprise** — DAST microservices normalising WebInspect / Burp / ZAP / OpenVAS output into one pipeline
- ⚡ freelance since 2021 — LLM workflows, scrapers, FFmpeg pipelines, bots, solana programs

---

### things i've built

| project | what it is | stack |
|---|---|---|
| **[tic-tac-futures](https://github.com/Arpit-Khandelwal/tic-tac-futures)** | every one of the 255,168 tic-tac-toe games as a branching timeline tree, with D4 symmetry folding · [live](https://tic-tac-futures.vercel.app) | typescript · game trees |
| **[payroll-arcium-program](https://github.com/Arpit-Khandelwal/payroll-arcium-program)** | confidential payroll on solana — salaries encrypted to an arcium MXE, revealed only on payment | rust · anchor · MPC |
| **[dark-payroll](https://github.com/Arpit-Khandelwal/dark-payroll)** | private payroll with ZK compliance proofs — solana privacy hackathon 2026 | typescript · zk |
| **[agentpay](https://github.com/Arpit-Khandelwal/agentpay)** · **[x402-poc](https://github.com/Arpit-Khandelwal/x402-poc)** | streaming micropayments so agents can pay per request over HTTP 402 | solana · x402 |
| **[leash](https://github.com/Arpit-Khandelwal/leash)** | give your agent a card, keep the leash — spend control for agent subscriptions | typescript · payments |
| **[jev-linkedin-slop-filter](https://github.com/Arpit-Khandelwal/jev-linkedin-slop-filter)** | stamps BAIT / CORP / BRAG on linkedin engagement-bait, judged live by a fast typed model | chrome extension · LLMs |

---

### open source

<!-- oss:start -->

- ✅ **[neuralink/tsui#30](https://github.com/neuralink/tsui/pull/30)**: Load libX11 at runtime instead of linking it
- ✅ **[anmolkapil/plexo#150](https://github.com/anmolkapil/plexo/pull/150)**: Keep the end date calendar mounted, and wait for history before moving a file in a test
- ✅ **[anmolkapil/plexo#151](https://github.com/anmolkapil/plexo/pull/151)**: Re-render only what changed on each progress update
- ✅ **[anmolkapil/plexo#148](https://github.com/anmolkapil/plexo/pull/148)**: Start and stop schedules at the DST jump when their time is skipped
- ✅ **[anmolkapil/plexo#149](https://github.com/anmolkapil/plexo/pull/149)**: Show "1m 0s" rather than "60s" for a time left just under a minute
- ✅ **[anmolkapil/plexo#142](https://github.com/anmolkapil/plexo/pull/142)**: Open the Linux tab before using its panel in the download page tests
- ✅ **[anmolkapil/plexo#139](https://github.com/anmolkapil/plexo/pull/139)**: Fall back to a plain GET when a server refuses range requests with 403
- ✅ **[anmolkapil/plexo#144](https://github.com/anmolkapil/plexo/pull/144)**: Shorten a long name with an early dot instead of refusing the download
- ✅ **[anmolkapil/plexo#146](https://github.com/anmolkapil/plexo/pull/146)**: Don't show 100% before the last byte, or "undefined" for sub-byte speeds
- ✅ **[Anil-matcha/open-spaces#60](https://github.com/Anil-matcha/open-spaces/pull/60)**: Add Slop Filter for LinkedIn to independent implementations
- ✅ **[AbdelStark/awesome-typesafe-jev#91](https://github.com/AbdelStark/awesome-typesafe-jev/pull/91)**: Add Slop Filter for LinkedIn
- ✅ **[TryCaspian/caspian-sdk#167](https://github.com/TryCaspian/caspian-sdk/pull/167)**: expose chat_type on Message so handlers can tell DMs from group chatter
- ✅ **[ayghri/i-have-adhd#63](https://github.com/ayghri/i-have-adhd/pull/63)**: fix(claude): drop the manifest hooks key that blocks the SessionStart hook
- ✅ **[code100x/job-board#499](https://github.com/code100x/job-board/pull/499)**: feat: Expand Sorting Options for Jobs 

<sub>in review</sub>

- 🔄 **[neuralink/tsui#37](https://github.com/neuralink/tsui/pull/37)**: Add a help screen
- 🔄 **[neuralink/tsui#36](https://github.com/neuralink/tsui/pull/36)**: Explain the NeedsMachineAuth state
- 🔄 **[anmolkapil/plexo#159](https://github.com/anmolkapil/plexo/pull/159)**: Say "No peers found yet", search again, and stop after 30 s when the DHT finds no one for a magnet link
- 🔄 **[anmolkapil/plexo#158](https://github.com/anmolkapil/plexo/pull/158)**: Download from servers that give each byte range its own ETag (pCloud)
- 🔄 **[GopeedLab/gopeed#1588](https://github.com/GopeedLab/gopeed/pull/1588)**: perf(http): use 64 KiB connection read buffers
- 🔄 **[mlc-ai/xgrammar#987](https://github.com/mlc-ai/xgrammar/pull/987)**: fix: keep an escaped ^ at the start of a character class literal
- 🔄 **[anmolkapil/plexo#154](https://github.com/anmolkapil/plexo/pull/154)**: Split the last blocks among free streams when a server caps each connection
- 🔄 **[anmolkapil/plexo#153](https://github.com/anmolkapil/plexo/pull/153)**: Gather body chunks into fewer, larger disk writes
- 🔄 **[anmolkapil/plexo#140](https://github.com/anmolkapil/plexo/pull/140)**: Ship a .tar.gz for Linux alongside the AppImage, .deb and .rpm
- 🔄 **[sgl-project/sglang#44240](https://github.com/sgl-project/sglang/pull/44240)**: [Fix] trinity: Keep think tags inside tool-call arguments
- 🔄 **[CopilotKit/CopilotKit#7810](https://github.com/CopilotKit/CopilotKit/pull/7810)**: fix(a2ui-renderer): omit component schemas from catalog context when includeSchema is false
- 🔄 **[neuralinkcorp/datarepo#82](https://github.com/neuralinkcorp/datarepo/pull/82)**: Show a placeholder for unrenderable values in the SQL-filter catalog snippet
- 🔄 **[XiaoMiku01/TetherKit#12](https://github.com/XiaoMiku01/TetherKit/pull/12)**: fix(install): don't chown -R the shared PrivilegedHelperTools directory

<!-- oss:end -->

---

### toolbox

```
languages   rust · typescript · python · c++ · solidity
backend     node · express · hono · next.js · mongodb
ai          agent orchestration · tool calling · MCP servers · RAG · evals
systems     linux · docker · go · c/cgo · ffmpeg · kubernetes · aws
chain       solana · anchor · arcium (MPC) · helius
```

competitive programming in c++ and rust → **[CPP-Practice](https://github.com/Arpit-Khandelwal/CPP-Practice)** (500+ commits across codeforces, codechef, leetcode)

---

<p>
  <a href="https://arpitkhandelwal.com"><img src="https://img.shields.io/badge/arpitkhandelwal.com-111?style=flat-square&logo=googlechrome&logoColor=white" alt="website" /></a>
  <a href="https://linkedin.com/in/arpit-khandelwal-0812aa1a3"><img src="https://img.shields.io/badge/linkedin-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="linkedin" /></a>
  <a href="https://x.com/arpitkhandelwa3"><img src="https://img.shields.io/badge/@arpitkhandelwa3-000?style=flat-square&logo=x&logoColor=white" alt="x" /></a>
</p>
