require_relative 'menu'
require_relative 'order'

class Takeaway
  attr_reader :menu, :order

  def initialize(menu = Menu.new)
    @menu = menu
  end

  def launch!
    introduction
    home
  end

  def home
    home_options
    home_page(STDIN.gets.chomp.strip.downcase.to_sym)
  end

  def home_options
    puts "Select an option:"
    puts "Type 'Menu' to View Menu"
    puts "Type 'Order' to Place Order"
    puts "Type 'Quit' to Leave"
  end

  def home_page(selection)
    case selection
    when :menu then display_menu
    when :order then create_order
    when :quit then exit_app
    else
      puts "Please try again"
      home
    end
  end

  def create_order
    @order = Order.new
    order_options
  end

  def order_options
    puts "Select an option:"
    puts "Type 'Add' to Add Item"
    puts "Type 'Clear' to Reset Order"
    puts "Type 'Home' to Go Back to Home"
    puts "Type 'Quit' to Leave"
    order_page(STDIN.gets.chomp.strip.downcase.to_sym)
  end

  def order_page(selection)
    case selection
    when :add then add_item
    when :clear then create_order
    when :home then home
    when :exit then exit_app
    else
      puts "Please try again"
      order_options
    end
  end

  def add_item
    puts "What would you like to add?"
    item = STDIN.gets.chomp.strip.downcase.to_sym
    @order.add_item(item)
    order_options
  end

  private

  def introduction
    puts "Welcome to Takeaway Express"
  end

  def display_menu
    @menu.print
    home
  end

  def exit_app
    conclusion
    exit
  end

  def conclusion
    puts "Goodbye - Thanks for visiting!"
  end
end
