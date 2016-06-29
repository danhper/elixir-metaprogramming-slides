defmacro defdelegate(function, to: module) do
  {name, _, vars} = function  # {:fun, _, [{:a, _, _}, {:b, _, _}]}
  quote do
    def unquote(name)(unquote_splicing(vars)) do
      unquote(module).unquote(name)(unquote_splicing(vars))
    end
  end
end
