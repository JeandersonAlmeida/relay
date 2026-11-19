# Relay domain model

## Core concepts

- **Source**: system that sends webhooks, identified by a unique token and signing secret.
- **Destination**: URL where events from a source are delivered.
- **Event**: one received webhook, identified by `(source_id, external_id)`.
- **DeliveryAttempt**: one attempt to deliver an event to a destination.
- **Event status**: `received`, `delivered`, `failed` (will retry), or `dead` (gave up).

Domain behavior changes must be specified in `docs/specs/` and reflected in the relevant architecture documents.
