# Relay — project instructions

Relay is a webhook gateway built with Elixir and Phoenix. It receives events from external sources, rejects invalid and duplicate events, stores them, and delivers them to destinations with retries.

## Commands and quality gate

```text
mix setup
mix precommit
mix test
mix coveralls
mix credo --strict
mix ecto.rollback --all && mix ecto.migrate
```

Run `mix precommit` when the task is complete and fix every reported issue. A task is not done until the gate passes.

## Where to read before starting

- `docs/agent-workflow.md`: shared Spec-Driven Development workflow.
- `docs/specs/`: normative specifications. Read the relevant spec before editing.
- `docs/plans/`: implementation plans linked to approved specifications.
- `docs/templates/`: templates for specs and implementation plans.
- `docs/architecture/`: domain, data, reliability, security, and webhook contracts.
- `docs/adr/`: durable architectural decisions.
- `docs/guidelines/`: read only the guidelines related to the affected technology and boundary.

If no specification exists for the requested behavior, stop and propose one using `docs/templates/feature-spec.md`. Do not invent scope.

## Skills

- Identify whether an available skill applies before implementation.
- When a skill applies, read its `SKILL.md` completely and follow its required workflow, assets, tools, and validation.
- Record selected skills and skill-specific validation in the implementation plan when one exists.
- Skills guide execution; they do not replace the specification, these project instructions, guidelines, tests, or `mix precommit`.
- Do not use a skill to expand the approved scope.

## Workflow

1. Read this file, the relevant spec, the related architecture documents, and only the related guidelines.
2. Read applicable skills before taking task actions.
3. If behavior, contracts, or architecture change, create or update the spec before production code.
4. For work with multiple meaningful implementation or validation steps, create a plan in `docs/plans/` from `docs/templates/implementation-plan.md`.
5. Implement one planned task at a time, adding tests for each acceptance criterion.
6. Record requirement IDs, relevant guidelines, skills, and validation evidence in the plan.
7. Update architecture documents when behavior or the data model changes.
8. Propose an ADR for architectural decisions involving libraries, trade-offs, or data-model choices.
9. Run skill-specific validation and `mix precommit` before handoff.

The shared workflow is documented in `docs/agent-workflow.md`. The Relay-specific rules in `docs/guidelines/relay.md` and `docs/architecture/` apply to this project.

## Scope and safety

- Do not refactor outside the task scope.
- Do not commit, push, or open pull requests unless asked.
- Use Conventional Commits when a commit is requested.
- Use `Req` for HTTP requests. Do not use HTTPoison, Tesla, or `:httpc`.
- Do not add dependencies without approval.
- If code and architecture documentation disagree, stop and ask.

## Handoff

Report a short summary, changed files, commands and results, decisions, out-of-scope items, risks, open questions, and follow-ups. If anything is ambiguous or conflicts with these rules, ask before guessing.
