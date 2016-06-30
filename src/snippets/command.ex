defmacro command(name, do: block) do
  quote do
    @command %{name: name}
    unquote(block)
    update_in @app[:commands], &([@command | &1])
    @command nil
  end
end
