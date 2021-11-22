defmodule Polimorfismo.Human do
  defstruct [:name, :age, :sex]

  def describe(human) do
    "This is a human. Name: #{human.name}, Age: #{human.age}, Sex: #{human.sex}"
  end
end

defmodule Polimorfismo.Child do
  defstruct [:name, :age, :sex, :parents]
end
