class Order

  DEFAULT_QUANTITY = 1

  def initialize
    @basket = Hash.new(0)
  end

  def add_item(item, quantity = DEFAULT_QUANTITY)
    @basket[item] += quantity
    puts "#{item} x #{quantity} has been added to your basket"
  end
end
