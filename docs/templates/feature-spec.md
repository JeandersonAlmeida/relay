---
title: "<concise feature name>"
status: draft
version: "0.1"
date_created: YYYY-MM-DD
last_updated: YYYY-MM-DD
owner: "<team or person>"
tags: ["<domain>"]
---

# <Feature name>

## 1. Purpose and scope

Describe the user or system outcome. State the intended audience and assumptions.

### In scope

- <included outcome>

### Out of scope

- <explicitly excluded outcome>

## 2. Definitions

| Term | Definition |
| --- | --- |
| <term> | <unambiguous meaning> |

## 3. Requirements and constraints

- **REQ-001**: <observable functional behavior>.
- **CON-001**: <technical, product, or compatibility constraint>.
- **SEC-001**: <security or privacy requirement, if applicable>.
- **OBS-001**: <log, metric, audit, or alert expectation, if applicable>.

## 4. Interfaces and data contracts

Document every input, output, event, database change, API, or UI boundary affected.

| Boundary | Input | Output | Compatibility and failure behavior |
| --- | --- | --- | --- |
| <boundary> | <contract> | <contract> | <behavior> |

## 5. Acceptance criteria

- **AC-001**: Given <initial state>, when <action>, then <observable result>.
- **AC-002**: Given <edge case>, when <action>, then <safe failure or recovery>.

## 6. Validation strategy

| Criterion | Test level | Evidence |
| --- | --- | --- |
| AC-001 | Unit / integration / UI | <test file or manual procedure> |

## 7. Open questions and decisions

- **Q-001**: <question that blocks or may alter scope> — Owner: <name>; Due: <date>.
- **DEC-001**: <accepted decision and rationale>.

## 8. Dependencies and rollout

State external systems, migrations, backfills, feature flags, monitoring, rollback, and operational dependencies. Write `None` when not applicable.

## 9. Examples and edge cases

Provide representative valid, invalid, duplicate, retry, authorization, and failure examples relevant to the feature.

## 10. Related work

- Implementation plan: `<path or pending>`
- Related specifications: `<paths or none>`
