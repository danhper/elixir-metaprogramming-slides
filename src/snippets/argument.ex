defmacro argument(name) do
  quote do
    if @command do
      @command Map.put(@command, :arguments, [unquote(name), @command.arguments])
    else
      raise "argument should be called from inside a command"
    end
  end
end
