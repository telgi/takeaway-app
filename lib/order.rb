require_relative 'menu'

class Order

  attr_reader :basket, :menu

  DEFAULT_QUANTITY = 1

  def initialize
    @basket = Hash.new(0)
  end

  def add_item(item, quantity = DEFAULT_QUANTITY)
    if item_on_menu?(item)
      @basket[item] += quantity
      puts "#{item} x #{quantity} has been added to your basket"
    else
      puts "Item not on menu"
    end
  end

  def display
    if order_empty?
      puts "Your basket is empty"
    else
      puts "This is your current order:"
      sub_total
      puts "----"
      total
    end
  end

  private

  def item_on_menu?(item)
    @menu = Menu.new
    @menu.items.has_key?(item)
  end

  def order_empty?
    @basket.empty?
  end

  def sub_total
    @basket.map do |item, quantity|
      total = "%.2f" % (quantity * @menu.items[item])
      puts "#{item} x #{quantity}: £#{total}"
    end
  end

  def total
    total = 0
    @basket.map do |item, quantity|
      total += (quantity * @menu.items[item])
    end
    puts "Your current total is £#{"%.2f" % total}"
  end
end
