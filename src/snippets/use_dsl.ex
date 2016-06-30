defmodule MyCLI do
  use MyDSL

  name "my_cli"

  command :my_command do
    argument :hello

    run context do
      IO.inspect(context)
    end
  end
end
