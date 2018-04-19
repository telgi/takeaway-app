class Menu
  attr_reader :meals

  def initialize
    @meals = {
      burger: 5.00,
      chicken: 5.00,
      pizza: 8.00,
      chips: 2.00,
      drink: 2.00,
      cookies: 2.00
    }
  end

  def print
    @meals.map { |item, price| puts "#{item} : #{price}" }
  end
end
