# Phoenix guidelines

## Phoenix v1.8

- **Always** begin LiveView templates with `<Layouts.app flash={@flash} ...>` wrapping all inner content.
- `MyAppWeb.Layouts` is already aliased by `my_app_web.ex`; do not alias it again.
- A missing `current_scope` means the route is in the wrong authenticated `live_session` or `current_scope` was not passed to `<Layouts.app>`. Fix the route/session and pass the assign.
- `<.flash_group>` belongs only in `layouts.ex`.
- Use `<.icon>` from `core_components.ex`; never use `Heroicons` modules or similar.
- Use the imported `<.input>` component whenever available. Overriding its classes removes default styling, so provide complete styling.

## Router

- Router `scope` blocks can alias their routes. Do not duplicate that prefix with a manual alias.
- Do not create your own alias for route definitions when the `scope` already provides it.
- Do not use `Phoenix.View`.

## HEEx

- Use `~H` or `.html.heex`; never use `~E`.
- Build forms with `Phoenix.Component.form/1`, `inputs_for/1`, `to_form/2`, and `<.input>`. Do not use the deprecated `Phoenix.HTML.form_for` or `Phoenix.HTML.inputs_for`.
- Give key elements, especially forms and buttons, unique DOM IDs.
- Add app-wide template helpers in `my_app_web.ex`'s `html_helpers` block.
- For multiple conditions, use `cond` or `case`; Elixir has no `else if` or `elseif`.
- For literal braces in `<pre>` or `<code>`, add `phx-no-curly-interpolation` to the parent.
- Use HEEx class lists: `class={["base", @flag && "conditional"]}`. Wrap `if` expressions in `{...}`.
- Render collections with `<%= for item <- @collection do %>`; do not use `<% Enum.each %>`.
- Use HEEx comments: `<%!-- comment --%>`.
- Use `{...}` for attribute and value interpolation. Use `<%= ... %>` for block constructs in a tag body.

## LiveView

- Use `<.link navigate={href}>`, `<.link patch={href}>`, `push_navigate`, and `push_patch`; never use `live_redirect` or `live_patch`.
- Avoid LiveComponents unless there is a strong, specific need.
- Name LiveViews with the `Live` suffix. Browser routes are already aliased with the web module.

### Streams

- Use streams for collection assigns: `stream/3`, `stream_insert/4`, and `stream_delete/3`.
- Stream parents need a DOM ID and `phx-update="stream"`; each streamed child uses its supplied stream ID.
- Streams are not enumerable. Re-query and reset the stream to filter or refresh it.
- Track counts and empty states in separate assigns. An empty-state element works only when it is the sole sibling of the stream loop.
- Re-stream an item when another assign changes what is rendered inside it.
- Never use `phx-update="append"` or `phx-update="prepend"`.

### JavaScript interop

- A DOM-managing `phx-hook` must also use `phx-update="ignore"` and a unique DOM ID.
- Do not write raw embedded `<script>` tags in HEEx. Use a colocated hook (`:type={Phoenix.LiveView.ColocatedHook}`) for template-local code; its name starts with `.`.
- Put external hooks in `assets/js/` and register them in the `LiveSocket` hooks map.
- Use `push_event/3` for server-to-hook events, and rebind or return its resulting socket. Use `this.handleEvent` and `this.pushEvent` on the client as appropriate.

### Forms

- Drive forms from `to_form/2` assigns. For parameter maps, use string keys and optionally `as: :name`.
- A changeset passed to `to_form/2` supplies data, params, errors, and the form name.
- Use `<.form for={@form} id="...">` and fields such as `@form[:field]`.
- Never access a changeset in a template or use `<.form let={f} ...>`.
