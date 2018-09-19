require("Minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test
  def setup()
    @bear1 = Bear.new("Jake","Grizzly")
    @bear2 = Bear.new("Sarah","Black")
    @bear3 = Bear.new("Ebenezer","Koala")
  end

  def test_bear_name()
    assert_equal("Sarah",@bear2.name)
  end

  def test_bear_type()
    assert_equal("Koala",@bear3.type)
  end

  def test_bear_hungry()
    assert_equal(0,@bear1.hunger(nil,nil))
  end
end
