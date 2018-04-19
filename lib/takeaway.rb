class Takeaway
  def launch!
    introduction
    home_options
    home_page(STDIN.gets.chomp.strip.downcase.to_sym)
    # action loop
      # what do you want to do?
      # do that action
    # repeat until user quits
    conclusion
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
    home_options
  end

  def conclusion
    puts "Goodbye and happy munching!"
  end
end
