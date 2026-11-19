# Delivery reliability

- Delivery attempts represent individual attempts to deliver an event to a destination.
- Event status transitions are `received`, `delivered`, `failed`, and `dead`.
- Delivery work is enqueued in the same transaction as event persistence.
- PubSub broadcasts occur only after the persistence transaction commits.
- HTTP calls use `Req` behind a behaviour so tests can mock the boundary with Mox.
- Tests never call the real network.
