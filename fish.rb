class Fish
  attr_reader :species,:stock

  def initialize(species,stock)
    @species = species
    @stock = stock
  end

  def eat_fish(victims)
    @stock -= victims
  end
end
