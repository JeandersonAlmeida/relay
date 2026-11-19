# Implementation plan: <feature name>

Store completed plans in `docs/plans/`. Use a descriptive filename such as
`<spec-name>-plan.md` and keep the plan linked to its governing specification.

- Specification: `<path>`
- Status: `draft | active | validating | complete`
- Owner: `<name>`
- Last updated: `YYYY-MM-DD`

## Scope checkpoint

- Requirements: `REQ-...`
- Acceptance criteria: `AC-...`
- Non-goals: `<from specification>`
- Blocking open questions: `<none or IDs>`

## Tasks

| Status | Task | Requirements | Validation |
| --- | --- | --- | --- |
| [ ] | <small implementation task> | REQ-001 | <test or check> |

## Test plan

| Level | Scenario | Criterion | Location / procedure |
| --- | --- | --- | --- |
| Unit | <scenario> | AC-001 | `<test path>` |
| Integration | <scenario> | AC-002 | `<test path>` |
| Manual | <scenario if automation is unsuitable> | AC-003 | `<steps>` |

## Rollout and rollback

- Rollout: `<migration, flag, deploy ordering, or none>`
- Rollback: `<safe recovery procedure>`
- Monitoring: `<signals to observe>`

## Validation record

| Date | Command or procedure | Result | Notes |
| --- | --- | --- | --- |
| YYYY-MM-DD | `mix precommit` | pending | |

## Handoff

- Delivered requirements: `<IDs>`
- Deferred work: `<IDs or none>`
- Known limitations: `<none or description>`
