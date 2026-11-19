# Ecto guidelines

- Preload Ecto associations before accessing them in templates.
- Import `Ecto.Query` and other required modules in `seeds.exs`.
- Use the `:string` schema type for both database `text` and string columns.
- `Ecto.Changeset.validate_number/2` does not accept `:allow_nil`; validation already skips unchanged or nil values.
- Access changeset fields with `Ecto.Changeset.get_field/2`.
- Do not include programmatically assigned fields, such as `user_id`, in `cast` calls. Set them explicitly on the struct.
- Generate migrations with `mix ecto.gen.migration migration_name_using_underscores`.
