# Test guidelines

## General

- Always use `start_supervised!/1` to start processes in tests.
- Avoid `Process.sleep/1` and `Process.alive?/1`.
  - Monitor process completion with `Process.monitor/1` and assert the `:DOWN` message.
  - Synchronize handled messages with `_ = :sys.get_state/1`.

## LiveView tests

- Use `Phoenix.LiveViewTest` and the included `LazyHTML` for assertions.
- Drive form tests with `render_submit/2` and `render_change/2`.
- Split major cases into small, isolated files; build from content-presence checks to interaction tests.
- Reference the unique element IDs added in templates through `element/2`, `has_element?/2`, and related selectors.
- Do not assert against raw HTML. Use `element/2`, `has_element?/2`, and similar helpers.
- Prefer stable key-element assertions over text content.
- Test outcomes, not implementation details.
- Test the rendered HTML structure produced by components, rather than assumed HTML.
- When selectors fail, inspect a limited `LazyHTML` selection rather than dumping the entire response.
