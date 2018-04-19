require_relative 'menu'

class Takeaway
  attr_reader :menu

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
  end

  def home_page(selection)
    case selection
    when :menu then display_menu
    end
  end

  private

  def introduction
    puts "Welcome to Takeaway Express"
  end

  def display_menu
    @menu.print
    home
  end

  def conclusion
    puts "Goodbye and happy munching!"
  end
end
