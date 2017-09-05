defmodule Greeter do
  def for(name, greeting) do
    fn
      #value is pinned to the name
      (^name) -> "#{greeting} #{name}"
     (_) -> "I don't know you" 
    end
  end
end

#define function with the greeter
mr_valim = Greeter.for("Jose", "oi")

IO.puts mr_valim.("Jose")
IO.puts mr_valim.("Pacho")


