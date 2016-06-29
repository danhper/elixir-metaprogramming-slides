defmacro get(route, do: block) do
  quote do
    def handle_request(conn, :get, unquote(route)) do
      unquote(block)
    end
  end
end
