---
title: "Spec-driven development process"
status: approved
version: "1.0"
date_created: 2026-11-19
last_updated: 2026-11-19
owner: "Relay maintainers"
tags: ["process", "development", "agents"]
---

# Spec-driven development process

## 1. Purpose and scope

This specification defines how Relay changes are discovered, specified, implemented, and validated when humans and AI agents collaborate. It applies to new features, behavior changes, interface changes, data changes, and architecture changes.

It does not replace repository-level instructions, security review, or maintainer approval.

## 2. Definitions

| Term | Definition |
| --- | --- |
| Specification | A versioned document that defines approved behavior and constraints. |
| Plan | A task-level implementation and validation record derived from a specification. |
| Agent | A software assistant that reads and modifies the repository under human direction. |
| Evidence | Reproducible output from tests, checks, or a documented manual procedure. |

## 3. Requirements, constraints, and guidelines

- **REQ-001**: Every behavior-changing implementation shall reference an approved specification before production code is changed.
- **REQ-002**: Each specification shall state its goal, in-scope behavior, non-goals, requirements, interfaces, acceptance criteria, and validation strategy.
- **REQ-003**: Each requirement and acceptance criterion shall have a stable identifier.
- **REQ-004**: Agents shall record unresolved scope-changing decisions as open questions and obtain maintainer direction before implementing them.
- **REQ-005**: A multi-step change shall have an implementation plan linked to its specification.
- **REQ-006**: When an applicable skill exists, agents shall read its `SKILL.md` before implementation and follow its required workflow and validation.
- **REQ-007**: Agents shall read the project guidelines relevant to the affected technologies and boundaries, without requiring unrelated guidelines to be read.
- **CON-001**: Repository instructions take precedence over this process specification.
- **CON-002**: Documentation must describe delivered behavior; it must be updated in the same change when behavior or contracts change.
- **CON-003**: Skills provide execution guidance but shall not replace the specification or expand the approved scope.
- **GUD-001**: Prefer small, independently verifiable tasks and acceptance criteria stated as observable outcomes.

## 4. Interfaces and data contracts

The process uses these document interfaces:

| Artifact | Location | Required relationship |
| --- | --- | --- |
| Specification | `/docs/specs/spec-<purpose>-<subject>.md` | Links to implementation plan and related specifications. |
| Implementation plan | `/docs/plans/<spec-name>-plan.md` | Links to its governing specification and requirement IDs. |
| Validation evidence | Implementation plan | Records command/procedure, result, date, and exceptions. |

## 5. Acceptance criteria

- **AC-001**: Given a proposed behavior change, when work begins, then a specification identifies the requested behavior and explicit non-goals.
- **AC-002**: Given an approved specification, when an agent implements it, then the agent can trace each delivered behavior to a requirement and acceptance criterion.
- **AC-003**: Given a change that affects a public, persisted, or asynchronous boundary, when the specification is reviewed, then its compatibility and failure behavior are documented.
- **AC-004**: Given an implementation is handed off, when validation is reviewed, then the plan contains reproducible evidence for the required checks or a stated reason why a check was not run.
- **AC-005**: Given an unresolved decision that would change scope, security, compatibility, or data behavior, when an agent encounters it, then implementation pauses for maintainer direction instead of assuming an answer.
- **AC-006**: Given an applicable skill, when implementation starts, then the selected skill's instructions and validation steps are followed and recorded in the plan when one exists.
- **AC-007**: Given a change affecting specific technologies or boundaries, when implementation starts, then the related project guidelines are consulted and unrelated guidelines are not required.

## 6. Test automation strategy

- **Test levels**: Select unit, integration, and UI tests based on the acceptance criteria and affected boundary.
- **Frameworks**: Use the project’s ExUnit and Phoenix testing tools.
- **Test data**: Create isolated data through project test helpers and clean it up through normal test supervision/transactions.
- **CI/CD integration**: Run `mix precommit` before handoff.
- **Coverage**: Add meaningful tests for new behavior; do not lower coverage expectations to accommodate untested work.
- **Manual validation**: Record exact steps and observed result when automation is impractical.

## 7. Rationale and context

Relay is intended to deliver events reliably across system boundaries. Clear specifications reduce ambiguity around delivery semantics, retries, idempotency, persistence, and operational behavior, while giving agents a bounded and reviewable source of truth.

## 8. Dependencies and external integrations

### Technology platform dependencies

- **PLT-001**: The Elixir/Phoenix project tooling, including `mix precommit`, provides the default repository quality gate.

### Compliance dependencies

None currently defined. Future specifications must add applicable security, privacy, or contractual requirements.

## 9. Examples and edge cases

```text
Valid: A webhook retry policy change specifies retryable statuses, attempt limit,
backoff behavior, duplicate-delivery semantics, telemetry, and failure criteria.

Invalid: "Add retries" without an attempt limit, error classification, or
acceptance criteria. This remains a draft and must not be implemented as specified.
```

## 10. Validation criteria

- The documentation map and templates named in this specification exist.
- New specifications follow the naming and status conventions in `/docs/specs/README.md`.
- Agents can follow `docs/agent-workflow.md` to determine readiness, completion, and evidence requirements.
- Implementation plans are stored in `docs/plans/` and link back to their governing specifications.
- Applicable skills are identified before implementation and their required validation is recorded when a plan exists.
- Relevant project guidelines are identified and consulted before implementation.

## 11. Related specifications and further reading

- [Agent workflow](../agent-workflow.md)
- [Feature specification template](../templates/feature-spec.md)
- [Implementation plan template](../templates/implementation-plan.md)
