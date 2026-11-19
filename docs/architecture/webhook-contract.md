# Webhook contract

## Signatures

- Signatures use HMAC-SHA256 over the raw request body.
- Compare signatures with `Plug.Crypto.secure_compare/2`.
- Reject requests with old timestamps.

## Headers

Webhook headers use the `x-relay-` prefix:

- `x-relay-timestamp`
- `x-relay-signature`
- `x-relay-event-id`

Changes to this contract require a specification and compatibility review.
