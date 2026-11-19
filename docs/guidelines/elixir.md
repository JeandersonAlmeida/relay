# Elixir and Mix guidelines

## Elixir

- Elixir lists do not support index-based access with `list[index]`. Use `Enum.at/2`, pattern matching, or `List` functions.
- Because variables are immutable, bind the result of `if`, `case`, or `cond` when it must be used outside the block.
- Never nest multiple modules in one file; this can cause cyclic dependencies and compilation errors.
- Do not use map access syntax such as `changeset[:field]` on structs. Access struct fields directly and use `Ecto.Changeset.get_field/2` for changesets.
- Use Elixir's standard `Time`, `Date`, `DateTime`, and `Calendar` APIs. Do not add dependencies unless requested; `date_time_parser` may be used for date/time parsing.
- Do not use `String.to_atom/1` with user input.
- Predicate function names should end in `?` and should not begin with `is_` unless they are guards.
- Name OTP primitives such as `DynamicSupervisor` and `Registry` in their child specifications.
- Use `Task.async_stream/3` for concurrent enumeration with back-pressure, normally with `timeout: :infinity`.

## Mix

- Read task documentation and options with `mix help task_name` before using tasks.
- Debug failures with a focused file (`mix test test/path_test.exs`) or rerun previously failed tests with `mix test --failed`.
- Avoid `mix deps.clean --all` unless there is a specific, justified need.
