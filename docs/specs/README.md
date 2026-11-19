# Specifications

This directory holds the normative, versioned source of truth for Relay behavior, technical constraints, and architecture decisions.

## Naming

Use the format `spec-<purpose>-<subject>.md`, where `<purpose>` is one of:

- `architecture`
- `data`
- `design`
- `infrastructure`
- `process`
- `schema`
- `tool`

Example: `spec-architecture-event-delivery.md`.

## Status values

| Status | Meaning |
| --- | --- |
| `draft` | Proposed; implementation must not rely on unresolved scope. |
| `approved` | Accepted source of truth for implementation. |
| `implemented` | Delivered and validated in the codebase. |
| `superseded` | Replaced; link to the replacement specification. |

## Creating a specification

Start with [`docs/templates/feature-spec.md`](../templates/feature-spec.md), save the result in this directory, and follow the agent workflow. Keep requirement IDs stable after approval; add new IDs instead of renumbering existing requirements.
