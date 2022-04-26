require './lib/item'

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

  def stock(item, number)
    if @inventory[item].nil?
      @inventory[item] = number
    else
      @inventory[item] += number
    end
  end

  def potential_revenue
    rev = 0
    @inventory.each do |item|
      rev += (item[0].price * item[1])
      end
    return rev
  end
end
