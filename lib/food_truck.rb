class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item].nil?
      @inventory[item] = 0
    else
      @inventory[item]
    end
  end

  def stock

  end
end
