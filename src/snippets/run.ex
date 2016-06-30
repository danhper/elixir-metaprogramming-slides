defmacro run(context, do: block) do
  quote bind_quoted: [context: Macro.escape(context), block: Macro.escape(block)] do
    def __run__(unquote(@command.name), var!(unquote(context))) do
      unquote(block)
    end
  end
end
