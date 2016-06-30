defmacro __before_compile__(_env) do
  quote do
    def __app__ do
      @app
    end
  end
end
