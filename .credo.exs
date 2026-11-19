%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/", "test/"],
        excluded: [~r"/_build/", ~r"/deps/", ~r"/node_modules/"]
      },
      strict: true,
      color: true,
      checks: %{
        disabled: [{Credo.Check.Design.AliasUsage, false}]
      }
    }
  ]
}
