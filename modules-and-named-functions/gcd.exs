defmodule Gcd do
  def gcd(x,0), do: x 
  def gcd(x,y), do: gcd(x,rem(x,y))
end
