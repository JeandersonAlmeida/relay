# Implementation plans

This directory contains implementation plans for approved specifications.

## When to create a plan

Create a plan when the work has more than one meaningful implementation or validation step. Small, isolated changes may be implemented directly from their specification when the scope and validation are obvious.

## Naming and structure

Use a descriptive filename linked to the governing specification, for example:

```text
docs/specs/spec-architecture-event-delivery.md
docs/plans/spec-architecture-event-delivery-plan.md
```

Start from [`docs/templates/implementation-plan.md`](../templates/implementation-plan.md). Every plan should include the specification path, requirement and acceptance-criteria IDs, ordered tasks, test plan, rollout/rollback notes, and a validation record.

Plans are working documents. Update them as implementation decisions, validation results, and known limitations become clear.
