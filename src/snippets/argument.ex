defmacro argument(name) do
  quote do
    if @command do
      update_in @command[:arguments], &([name | &1])
    else
      raise "argument should be called from inside a command"
    end
  end
end
