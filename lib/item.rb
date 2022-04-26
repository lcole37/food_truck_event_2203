class Item
  attr_reader :name

  def initialize(data)
    @name = data[:name]
    @price_string = data[:price]
  end

  def price
    p = @price_string.gsub("$","")
    p.to_f
  end
end
