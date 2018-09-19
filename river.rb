class River
  attr_reader :name
  attr_accessor :stock

  def initialize(name,stock)
    @name = name
    @stock = stock
  end
end
