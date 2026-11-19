# Agent workflow

This workflow makes change intent explicit before implementation. It applies to agents and human contributors.

## Operating rules

- Treat an approved specification as the source of truth for scope and acceptance.
- Identify any applicable skill before implementation and read its `SKILL.md` completely.
- Follow skill-specific workflow, asset, tool, and validation requirements when a skill applies.
- Skills guide how a task is executed; they do not replace the specification or expand its scope.
- Read only the guidelines relevant to the task's technology and affected boundary; do not read every guideline by default.
- Do not invent product behavior, interfaces, migrations, dependencies, or security policy when the specification is silent. Mark the item as an open question instead.
- Keep each change scoped: unrelated refactors and formatting churn require separate approval.
- Preserve existing local work. Inspect `git status` before and after changes.
- Cite the requirement IDs addressed by a code change and the acceptance criteria covered by tests.
- Prefer executable evidence over claims: test output, static checks, and manually verified flows belong in the implementation plan.

## Lifecycle

| State | Required artifact | Exit condition |
| --- | --- | --- |
| Discovery | Feature specification draft | Goal, non-goals, constraints, open questions, and acceptance criteria are clear. |
| Approved | Specification marked `approved` | A maintainer has resolved scope-changing open questions. |
| Planned | Implementation plan in [`docs/plans`](plans/README.md) | Ordered tasks, affected boundaries, tests, and rollout concerns are identified. |
| Implementing | Plan checklist | Each completed task links to its requirement and verification. |
| Validating | Plan validation record | Required automated and manual checks have recorded results. |
| Complete | Updated specification and plan | Every acceptance criterion is met, deferred, or explicitly rejected by a maintainer. |

## Required change flow

1. Read the repository instructions and the relevant specifications.
2. Identify the affected technologies and boundaries, then read only the related files in `docs/guidelines/`.
3. Identify applicable skills and read each selected `SKILL.md` completely before taking task actions.
4. Write or update the feature specification before changing production code when behavior, contracts, or architecture change.
5. Resolve blocking open questions with a maintainer. Do not guess.
6. Create an implementation plan in `docs/plans/` for work with more than one meaningful task or validation step, using `docs/templates/implementation-plan.md`.
7. Record the relevant guidelines, selected skills, and their required validation in the implementation plan when a plan exists.
8. Implement in small, reviewable increments. Add or update tests for each acceptance criterion.
9. Run skill-specific validation and the verification commands required by the plan, including `mix precommit`, before handoff.
10. Update the plan with commands, result, date, selected skills, relevant guidelines, and any validation not performed.

## Definition of ready

An implementation may start only when the specification includes:

- a concise goal and explicit non-goals;
- numbered requirements and acceptance criteria;
- impacted interfaces and data contracts, including compatibility expectations;
- error, authorization, and observability expectations where applicable;
- resolved or explicitly non-blocking open questions.

## Definition of done

A change is complete only when:

- all in-scope acceptance criteria have evidence;
- the implementation plan is stored in `docs/plans/` and links back to its specification;
- relevant project guidelines were consulted without requiring unrelated guidelines to be read;
- applicable skills were used according to their instructions and their validation evidence is recorded;
- relevant unit, integration, and UI tests are present or a documented reason explains why not;
- formatting, compilation, linting, and the full project gate pass (`mix precommit`);
- documentation and contracts match the delivered behavior;
- known limitations and follow-up work are documented rather than silently omitted.

## Requirement traceability

Use stable IDs in prose, commits, PR descriptions, and test names where useful:

- `REQ-###`: functional requirement
- `CON-###`: constraint
- `SEC-###`: security requirement
- `OBS-###`: observability requirement
- `AC-###`: acceptance criterion
- `Q-###`: open question

Example: `REQ-003 is covered by AC-004 and test/relay/events/create_event_test.exs`.
