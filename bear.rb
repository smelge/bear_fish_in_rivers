class Bear
  attr_reader :name, :type

  def initialize(name,type)
    @name = name
    @type = type
    @stomach = []
  end

  def hunger(river,fish)
    if river == nil && fish == nil
      return @stomach.count
    end
  end
end
