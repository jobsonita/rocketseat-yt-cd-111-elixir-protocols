defmodule Polimorfismo.Pet do
  defstruct [:animal, :name, :age, :sex]

  def describe(pet) do
    "This is a pet. Animal: #{pet.animal}, Name: #{pet.name}, Age: #{pet.age}, Sex: #{pet.sex}"
  end
end
