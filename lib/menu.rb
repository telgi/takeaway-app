class Menu
  attr_reader :items

  def initialize
    @items = {
      burger: 5.00,
      chicken: 5.00,
      pizza: 8.00,
      chips: 2.00,
      drink: 2.00,
      cookies: 2.00
    }
  end

  def print
    i = 1
    @items.map do |item, price|
      puts "#{i}. #{item.capitalize} : £" + sprintf('%.2f', price)
      i += 1
    end
  end
end
