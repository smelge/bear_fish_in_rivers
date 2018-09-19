require("Minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test
  def setup()
    @fish1 = Fish.new("Salmon",1000)
    @fish2 = Fish.new("Trout", 7000)
    @fish3 = Fish.new("Coelacanth", 1)
  end

  def test_fish_species()
    assert_equal("Trout",@fish2.species)
  end

  def test_fish_stock()
    assert_equal(1000,@fish1.stock)
  end

  def test_eat_fish()
    @fish2.eat_fish(5)
    assert_equal(6995,@fish2.stock())
  end
end
