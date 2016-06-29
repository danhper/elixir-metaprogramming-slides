defmacro if(condition, do: do_clause, else: else_clause) do
  quote do
    case unquote(condition) do
      x when x in [nil, false] -> unquote(else_clause)
      _ -> unquote(do_clause)
    end
  end
end
