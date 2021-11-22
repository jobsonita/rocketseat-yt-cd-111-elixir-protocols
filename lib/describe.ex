defprotocol Polimorfismo.Describe do
  @fallback_to_any true
  def describe(struct)
end

defimpl Polimorfismo.Describe, for: [Polimorfismo.Human, Polimorfismo.Child] do
  def describe(human) do
    Polimorfismo.Human.describe(human)
  end
end

defimpl Polimorfismo.Describe, for: Polimorfismo.Pet do
  def describe(pet) do
    Polimorfismo.Pet.describe(pet)
  end
end

defimpl Polimorfismo.Describe, for: List do
  def describe(list) do
    list
    |> Enum.map(&Polimorfismo.Describe.describe(&1))
    |> Enum.join(" | ")
  end
end

defimpl Polimorfismo.Describe, for: Any do
  def describe(_any) do
    {:error, "Unsupported type"}
  end
end
