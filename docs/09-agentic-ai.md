# Module 9: Agentic AI

**Goal:** Build simple AI agents that use tools, plan multi-step work, and operate with basic guardrails.

**Duration:** 2 weeks

**Prerequisites:** [Module 8 — Gen AI](./08-gen-ai.md)

---

## Topics & checklist

### Agent fundamentals
- [ ] Agent vs chatbot
- [ ] Tool / function calling
- [ ] Plan → act → observe loops
- [ ] ReAct pattern (reason + act)
- [ ] Short-term vs long-term memory (high level)

### Building agents
- [ ] Define tools (search, calculator, HTTP API, DB query)
- [ ] Parse tool results back into the LLM
- [ ] Multi-step workflows
- [ ] Explore one framework: LangGraph **or** CrewAI **or** AutoGen **or** plain function-calling

### Multi-agent & safety
- [ ] Role-based agents (planner / researcher / reviewer)
- [ ] Human-in-the-loop checkpoints
- [ ] Guardrails: allowlists, validation, rate limits
- [ ] Logging / tracing for debugging
- [ ] Failure modes: loops, bad tools, unsafe actions

---

## Mini project

**Tool-using agent**
- [ ] At least 2 tools
- [ ] Completes a multi-step task (e.g. research + summarize + save)
- [ ] Logs each step
- [ ] README with architecture diagram (simple boxes are fine)

---

## Interview prep

See [Interview guide — Agentic AI](./interview-and-coding.md#agentic-ai).

---

## Next step

→ [Module 10: Cloud Basics](./10-cloud-basics.md)
