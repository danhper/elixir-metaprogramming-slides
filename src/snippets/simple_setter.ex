defmacro name(name) do
  quote do
    @app Map.put(@app, :name, unquote(name))
  end
end
