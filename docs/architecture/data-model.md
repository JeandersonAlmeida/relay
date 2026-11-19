# Relay data and transaction invariants

- Idempotency is enforced by the database with a unique index on `events (source_id, external_id)` and `ON CONFLICT DO NOTHING`.
- Never check for duplicates with a `SELECT` before the event insert.
- `status` and `received_at` are set in the context, never through `cast`.
- Enqueue the delivery job in the same transaction as the event insert using `Ecto.Multi`.
- Broadcast over PubSub only after the transaction commits.
- Migrations must be reversible and generated with `mix ecto.gen.migration`.
