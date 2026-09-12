<!--
  ██████╗  █████╗      ██╗ █████╗ ███╗   ██╗ █████╗ ███╗   ██╗██████╗
  ██╔════╝ ██╔══██╗     ██║██╔══██╗████╗  ██║██╔══██╗████╗  ██║██╔══██╗
  ██║  ███╗███████║     ██║███████║██╔██╗ ██║███████║██╔██╗ ██║██║  ██║
  ██║   ██║██╔══██║██   ██║██╔══██║██║╚██╗██║██╔══██║██║╚██╗██║██║  ██║
  ╚██████╔╝██║  ██║╚█████╔╝██║  ██║██║ ╚████║██║  ██║██║ ╚████║██████╔╝
   ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝
-->

<div align="center">

# Gajanand V Dhayagode

**AI / ML Engineer-in-training** &nbsp;·&nbsp; Deep Learning &nbsp;·&nbsp; LLM Systems &nbsp;·&nbsp; Local-first AI

*I build AI systems that see, listen, remember, and act.*

[GitHub](https://github.com/gajanand27-05)
&nbsp;·&nbsp;
[LinkedIn](https://www.linkedin.com/in/gajanand-v-dhayagode/)
&nbsp;·&nbsp;
[Email](mailto:gajanandvd2005@gmail.com)

</div>

---

## About

I work where **large language models meet real infrastructure** — retrieval that cites its
sources, assistants that keep running when the connection drops, and agents that remember
the last conversation.

I care less about a model looking impressive in a notebook and more about what happens when
you deploy it. I'd rather ship **one system that works end to end** than ten notebooks that
never leave the notebook.

**Right now:** taking SG-CUBE to daily-driver quality, and getting better at RAG that grounds
every answer and admits when it doesn't know.

**How I build:** `model → pipeline → evaluation → deployment → observability → iterate`
The last two are where most student projects stop, which is why two of the repos below exist
only to measure whether the answers were any good.

---

## 🧊 SG-CUBE v1 — flagship

> **A local-first, voice-first, vision-aware AI assistant.** Cloud agent; voice, vision and
> memory stay on the machine.

This is the long project — the one everything else feeds back into.

```
  wake word   →  Vosk                    always-on, local
  speech in   →  faster-whisper + VAD    local
  routing     →  cache → ~40 rules → LLM deterministic before it's generative
  reasoning   →  Gemini 2.5 Flash        Ollama fallback
  agents      →  Commander → Planner → Guardian → Operator → Healer
  tools       →  109 registered          files · shell · web · media · OCR
  vision      →  Qwen2.5-VL              local, via Ollama
  memory      →  ChromaDB + in-memory    long-term and working
  speech out  →  Piper                   local
  surface     →  FastAPI + React dashboard, live over WebSocket
```

The part I'd point an engineer at is the **3-tier router**: a cache hit and a matched rule never
reach the model at all. Deterministic paths stay deterministic, and the LLM is the fallback
rather than the front door — which also makes the rule engine immune to planner hallucination.

`Python` `FastAPI` `Gemini` `Ollama` `faster-whisper` `Piper` `Qwen2.5-VL` `ChromaDB` `MCP` `React` `three.js`

<sub><b>1,071 tests passing</b> &nbsp;·&nbsp; 109 tools &nbsp;·&nbsp; 393 commits</sub>

**[→ Open sg-cube_v1](https://github.com/gajanand27-05/sg-cube_v1)**

---

## Other things I've built

**[NoteSmith](https://github.com/gajanand27-05/NoteSmith)** &nbsp;·&nbsp; `Python` `React 19` `RAG`
An AI study copilot that turns PDFs into notes, summaries and practice questions — built on your
own documents rather than on whatever the model half-remembers.

**[AI HUB](https://github.com/gajanand27-05/AI-HUB)** &nbsp;·&nbsp; `FastAPI` `React` `Gemini 2.5 Flash`
A multimodal orchestration platform — vision, speech and task pipelining behind one interface.

**[Déjà](https://github.com/gajanand27-05/deja-vu)** &nbsp;·&nbsp; `Python` `Cognee` `Knowledge Graph` `CLI`
A coding mentor that remembers you. A typed, persistent knowledge graph means every session
resumes where the last one ended instead of starting from zero. 42/42 tests green.

**[Agents of SigNoz](https://github.com/gajanand27-05/SigNoz-conform)** &nbsp;·&nbsp; `OpenTelemetry` `LLM Evals` `Alerting`
AI and agent observability. SigNoz ships the machinery — this closes the silent config gates
between a self-hoster and a working feature, then adds the signal it was missing: *measured*
answer quality, with regression alerts.

**[Domain RAG Chatbot](https://github.com/gajanand27-05/Domain_RAG_chatbot)** &nbsp;·&nbsp; `Streamlit` `LangChain` `Citations`
Grounded PDF question answering, built around one rule: if the documents don't contain the
answer, don't invent one. Every answer is cited down to the document and page.

**[KNS FAQ Bot](https://github.com/gajanand27-05/kns-bot)** &nbsp;·&nbsp; `Groq Llama 3.3 70B` `pgvector` `Supabase`
A college FAQ chatbot on a real retrieval pipeline, with automatic local Ollama fallback.

<sub><b>Also in the lab →</b> &nbsp;
<a href="https://github.com/gajanand27-05/finsim_ai_my">FinSim AI+</a> &nbsp;·&nbsp;
<a href="https://github.com/gajanand27-05/NEXUS">NEXUS</a> &nbsp;·&nbsp;
<a href="https://github.com/gajanand27-05/AI-Observability">AI-Observability</a> &nbsp;·&nbsp;
<a href="https://github.com/gajanand27-05/Health-Insurance-Cross-Sell">Health Insurance Cross-Sell</a>
</sub>

---

## Open source

**[reef-mcp-registry](https://github.com/Yashash4/reef-mcp-registry)** &nbsp;<sub>by [@Yashash4](https://github.com/Yashash4)</sub>
Co-authored refactors to the presentation and config layers, and to Gemini Live API handling.

**[devops-pipeline-gym](https://github.com/Yashash4/devops-pipeline-gym)** &nbsp;<sub>by [@Yashash4](https://github.com/Yashash4)</sub>
Contributed 48 SFT trajectories covering judgment-call and cascading-failure scenarios.

---

## Stack

| | |
|---|---|
| **Languages** | Python · JavaScript · TypeScript · SQL |
| **ML / DL** | PyTorch · scikit-learn · NLTK |
| **LLM systems** | RAG · LangChain · Gemini · Ollama · Groq |
| **Retrieval & memory** | ChromaDB · pgvector · Cognee |
| **Backend** | FastAPI · Supabase · SQLite · PostgreSQL |
| **Frontend** | React · Next.js · Vite · Tailwind · Streamlit |
| **Speech** | faster-whisper · Piper |
| **Observability** | OpenTelemetry · SigNoz |

---

<div align="center">

**Open to internships, collaborations, and hard problems.**

[GitHub](https://github.com/gajanand27-05)
&nbsp;·&nbsp;
[LinkedIn](https://www.linkedin.com/in/gajanand-v-dhayagode/)
&nbsp;·&nbsp;
[Email](mailto:gajanandvd2005@gmail.com)

</div>
