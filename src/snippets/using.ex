defmacro __using__(_opts) do
  quote do
    import unquote(__MODULE__)
    @app %{commands: []}
    @command nil
    @before_compile unquote(__MODULE__)
  end
end
