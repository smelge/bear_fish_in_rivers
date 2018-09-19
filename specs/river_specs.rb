require("Minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test
  def setup()
    fish1 = Fish.new("Salmon",1000)
    fish2 = Fish.new("Trout", 7000)
    fish3 = Fish.new("Coelacanth", 1)
    @river1 = River.new("Tweed",fish1)
    @river2 = River.new("Forth",fish2)
    @river3 = River.new("Clyde",fish3)
  end

  def test_river_name()
    assert_equal("Clyde",@river3.name())
  end

  def test_river_population()
    assert_equal(7000,@river2.Fish.stock())
  end
end
