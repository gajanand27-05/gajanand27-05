#!/usr/bin/env bash
# Apply repository descriptions for gajanand27-05.
#
# Requires the GitHub CLI, already authenticated:
#   gh auth status
#
# Dry run first (prints what would change, writes nothing):
#   bash apply-descriptions.sh --dry-run
#
# Apply for real:
#   bash apply-descriptions.sh
#
# Safe to re-run — setting a description is idempotent.
# The fork `signoz-oss` is deliberately excluded.

set -uo pipefail

USER="gajanand27-05"
DRY=0
[ "${1:-}" = "--dry-run" ] && DRY=1

set_desc() {
  local repo="$1" desc="$2"
  if [ "$DRY" -eq 1 ]; then
    printf '  [dry-run] %-32s %s\n' "$repo" "${desc:0:70}..."
    return
  fi
  if gh repo edit "$USER/$repo" --description "$desc" >/dev/null 2>&1; then
    printf '  ✓ %-32s set\n' "$repo"
  else
    printf '  ✗ %-32s FAILED\n' "$repo"
  fi
}

echo "Applying descriptions for $USER ..."
echo

set_desc "sg-cube_v1" \
  "Offline-first voice AI assistant — Whisper STT, Piper TTS, Gemini with local Ollama fallback, ChromaDB memory, React panel."

set_desc "NoteSmith" \
  "AI study copilot that turns PDFs into notes, summaries and practice questions — Python core, React 19 interface."

set_desc "AI-HUB" \
  "Multimodal AI orchestration platform — vision, speech and task pipelining on Gemini 2.5 Flash, FastAPI and React."

set_desc "deja-vu" \
  "Déjà — a CLI coding mentor with persistent memory. Typed knowledge graph on Cognee, so every session resumes where the last ended."

set_desc "NEXUS" \
  "Hackathon platform in build — Next.js + Supabase app scaffolded against a complete, frozen product and API spec."

set_desc "kns-bot" \
  "College FAQ chatbot on a real RAG pipeline — Groq Llama 3.3 70B, pgvector on Supabase, automatic local Ollama fallback."

set_desc "Domain_RAG_chatbot" \
  "Domain-specific RAG chatbot for PDF question answering — every answer grounded in retrieved chunks, with page citations."

set_desc "DecisionTimeMachine" \
  "Abandoned prototype — Cognee-backed decision memory from a hackathon weekend. Superseded by deja-vu."

set_desc "AI-Observability" \
  "Learning-by-building RAG chatbot with full observability — public dashboard tracing every AI request, plus an admin view."

set_desc "SigNoz-conform" \
  "AI and agent observability on SigNoz — closing the silent config gates and adding measured LLM answer quality."

set_desc "Health-Insurance-Cross-Sell" \
  "Predicts whether a health-insurance policyholder will buy vehicle insurance — modular pipeline over 381K imbalanced rows."

set_desc "unloxminor6" \
  "AI/ML minor projects for the Unlox May 2026 batch — CNN image classification on CIFAR-10 and supporting experiments."

set_desc "CodeAlpha_FAQChatbot" \
  "CodeAlpha AI Internship Task 2 — FAQ chatbot using NLP (NLTK, TF-IDF, cosine similarity) with a Streamlit chat UI."

set_desc "finsim_ai_my" \
  "FinSim AI+ — financial intelligence and behavioural analytics dashboard on React 19, Vite, Supabase and Gemini."

set_desc "Task-Manager-Pro" \
  "Task Manager Pro — real-time collaborative task management built around rooms, roles and rituals."

set_desc "EVOKE-2K26" \
  "Registration and participant platform for EVOKE 2K26, an inter-school festival. Planning complete through Phase 3."

set_desc "sg-cube" \
  "First-generation SG-CUBE — blueprints, phase roadmap and server prototype. Superseded by sg-cube_v1."

# Attribution-honest. Delete this line if you remove or re-fork the repo instead.
set_desc "Hand-written-digit-recognition" \
  "Study copy of hoffhannisyan/handwritten-digit-recognition (MIT) — browser-based MNIST digit recognition."

echo
echo "Done. Verify at https://github.com/$USER?tab=repositories"
