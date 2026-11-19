# Relay security

- Secrets such as `signing_secret` and destination `secret` are never logged, returned by an API, or committed.
- Mark secret fields with `redact: true`.
- The dashboard uses HTTP Basic Auth through `Plug.BasicAuth`, not `phx.gen.auth`.
- Do not create `live_session` or `current_scope` workarounds for the dashboard authentication model.
