defmacro name(name) do
  quote do
    @app Map.put(@app, :name, name)
  end
end
