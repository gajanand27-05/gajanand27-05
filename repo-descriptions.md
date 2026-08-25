# Repository descriptions

> **Status: APPLIED on 2026-08-25.** All 18 non-fork repos plus the profile repo
> now carry these descriptions live. Verified via the GitHub API — UTF-8 stored
> correctly (`Déjà`, em dashes intact).
>
> `apply-descriptions.sh` is idempotent, so re-run it any time you edit a line
> here. Dry run first with `bash apply-descriptions.sh --dry-run`.

Each is written to fit GitHub's listing width (~120 chars) so it does not
truncate on your profile, in search results, or on pinned cards.

---

## Flagship

| Repo | Description |
|---|---|
| `sg-cube_v1` | Offline-first voice AI assistant — Whisper STT, Piper TTS, Gemini with local Ollama fallback, ChromaDB memory, React panel. |
| `NoteSmith` | AI study copilot that turns PDFs into notes, summaries and practice questions — Python core, React 19 interface. |
| `AI-HUB` | Multimodal AI orchestration platform — vision, speech and task pipelining on Gemini 2.5 Flash, FastAPI and React. |
| `deja-vu` | Déjà — a CLI coding mentor with persistent memory. Typed knowledge graph on Cognee, so every session resumes where the last ended. |
| `NEXUS` | Hackathon platform in build — Next.js + Supabase app scaffolded against a complete, frozen product and API spec. |
| `kns-bot` | College FAQ chatbot on a real RAG pipeline — Groq Llama 3.3 70B, pgvector on Supabase, automatic local Ollama fallback. |

## Retrieval & memory

| Repo | Description |
|---|---|
| `Domain_RAG_chatbot` | Domain-specific RAG chatbot for PDF question answering — every answer grounded in retrieved chunks, with page citations. |
| `DecisionTimeMachine` | Abandoned prototype — Cognee-backed decision memory from a hackathon weekend. Superseded by deja-vu. |
| `AI-Observability` | Learning-by-building RAG chatbot with full observability — public dashboard tracing every AI request, plus an admin view. |
| `SigNoz-conform` | AI and agent observability on SigNoz — closing the silent config gates and adding measured LLM answer quality. |

## Applied ML

| Repo | Description |
|---|---|
| `Health-Insurance-Cross-Sell` | Predicts whether a health-insurance policyholder will buy vehicle insurance — modular pipeline over 381K imbalanced rows. |
| `unloxminor6` | AI/ML minor projects for the Unlox May 2026 batch — CNN image classification on CIFAR-10 and supporting experiments. |
| `CodeAlpha_FAQChatbot` | CodeAlpha AI Internship Task 2 — FAQ chatbot using NLP (NLTK, TF-IDF, cosine similarity) with a Streamlit chat UI. |

## Applications

| Repo | Description |
|---|---|
| `finsim_ai_my` | FinSim AI+ — financial intelligence and behavioural analytics dashboard on React 19, Vite, Supabase and Gemini. |
| `Task-Manager-Pro` | Task Manager Pro — real-time collaborative task management built around rooms, roles and rituals. |
| `EVOKE-2K26` | Registration and participant platform for EVOKE 2K26, an inter-school festival. Planning complete through Phase 3. |

## Archive / attribution

| Repo | Description |
|---|---|
| `sg-cube` | First-generation SG-CUBE — blueprints, phase roadmap and server prototype. Superseded by sg-cube_v1. |
| `Hand-written-digit-recognition` | Study copy of hoffhannisyan/handwritten-digit-recognition (MIT) — browser-based MNIST digit recognition. |

`signoz-oss` is a fork; leave its inherited description alone.

---

# Follow-ups worth doing while you are in there

## 1. Misspelled repo names — ✅ DONE

| Old | New |
|---|---|
| `AI-Observabitity` | `AI-Observability` |
| `Health_Insurarnce_cross_sell` | `Health-Insurance-Cross-Sell` |

Both renamed on 2026-08-25. Verified: new names return `200`, old names return
`301` (GitHub's permanent redirect), so any existing links still resolve. The
profile `README.md` was updated to point at the new name.

## 2. `sg-cube` has a virtual environment committed

Its tree contains `.venv/` and `.ruff_cache/`. That bloats clone size, and a
`.venv` can carry absolute local paths. Worth adding a `.gitignore` and running:

```bash
git rm -r --cached .venv .ruff_cache
```

## 3. `Hand-written-digit-recognition` attribution — ✅ DONE

`package.json` credits **Hovhannes Hovhannisyan** and points at
`hoffhannisyan/handwritten-digit-recognition` (MIT). It was a normal repo, not a
fork, with no README and no licence file — so nothing signalled the origin, and
the MIT notice was not travelling with the code.

**Resolved 2026-08-25:**

- Removed from the profile README's "ALSO IN THE LAB" strip
- GitHub description states the attribution
- `README.md` added with a prominent attribution block naming the author
- `LICENSE` added — standard MIT text, copyright to the original author. GitHub
  now auto-detects and displays **MIT** on the repo page

**Note on the "re-fork properly" option: it is not possible.** The upstream is
gone — both `hoffhannisyan/handwritten-digit-recognition` and the
`hoffhannisyan` account return `404`. The original `LICENSE` could not be
retrieved, so the added one was reconstructed from the standard MIT text using
the author named in `package.json`, with no year (valid MIT usage). The README
says plainly that it was reconstructed.

Deleting the repo remains an option if you would rather not carry someone else's
project at all — that one is still your call, and is irreversible.
