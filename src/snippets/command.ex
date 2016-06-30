defmacro command(name, do: block) do
  quote do
    @command %{name: unquote(name)}
    unquote(block)
    @app Map.put(@app, :commands, [@command | @app.commands])
    @command nil
  end
end
