# Relay-specific guidelines

These rules are exceptions or additions to the generic technology guidelines.

## Phoenix and LiveView exceptions

- To show the newest item first in a stream, use `stream_insert(socket, :events, event, at: 0)`. The default `at: -1` appends.
- In LiveView tests, assert on element IDs with `has_element?/2` and `element/2`; do not assert on raw HTML text.
- Keep one module per file, including behaviours and their implementations.

## Testing

- Tests with concurrent database work or LiveView use `async: false`; the rest use `async: true`.
- Reusable test data belongs in `test/support`; do not add a factory library.
- Cover business rules and edge cases such as invalid input, duplicates, and failures, not framework behavior.

## Approved boundaries

- Oban, Mox, Credo, and ExCoveralls are pre-approved dependencies.
- Ask before adding any other dependency.
