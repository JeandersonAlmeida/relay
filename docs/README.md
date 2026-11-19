# Development documentation

This directory contains the working documentation used to plan, implement, and validate Relay changes with human and AI-agent collaboration.

## Start here

1. Read [the agent workflow](agent-workflow.md) before starting work.
2. Find the relevant specification in [`docs/specs`](specs/README.md).
3. If no specification exists, create one from [the feature-spec template](templates/feature-spec.md).
4. Create an implementation plan from [the plan template](templates/implementation-plan.md) when the work needs multiple changes, decisions, or validation steps.
5. Implement only work accepted by the specification and plan, then record validation evidence in the plan.

## Documentation map

| Location | Purpose |
| --- | --- |
| [`docs/specs`](specs/README.md) | Versioned, normative specifications and decision records for product and technical behavior. |
| [`docs/architecture`](architecture/README.md) | Architecture overviews, system boundaries, and technical diagrams. |
| [`docs/adr`](adr/README.md) | Architecture Decision Records (ADRs). |
| [`docs/guidelines`](guidelines/phoenix.md) | Framework and development guidelines extracted from `AGENTS.md`. |
| [`docs/plans`](plans/README.md) | Implementation plans linked to approved specifications. |
| [`docs/agent-workflow.md`](agent-workflow.md) | Operating contract for agents and reviewers. |
| [`docs/templates`](templates) | Starting points for new specifications and implementation plans. |

## Language and lifecycle

Documentation is written in English so it can be read consistently by contributors and agents. A specification is a living artifact: update it in the same change when an accepted requirement, interface, or validation rule changes.
