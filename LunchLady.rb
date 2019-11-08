#BASIC OBJECTIVES
  #Choose from a list of main dishes
  #Choose 2 sides
  #Computer repeats order
  #Computer totals lunch items and displays total

#BONUS OBJECTIVES
  #User can choose as many "add on" items before showing total
  #User can clear choices
  #User has a wallet with a budget that may not be exceeded
  #Program loops until user types "Quit"
  #Main dishes and side items have descriptions (think hashes)

require "pry"

class Lady
  attr_accessor :item, :price

    def main_menu
      puts "Welcome to The Lunch Lady App!"
      puts "----------Let's Eat!----------"
      puts "Please select an option"
      puts "1. Order"
      puts "2. Pick Your Sides"
      puts "3. View Order"
      puts "4. Exit"
      print "> "

      choice = gets.to_i

      case choice
      when 1
        order
      when 2
        sides
      when 3
        view_order
      when 4
        check_out
        puts "Thank you for your business!"
        exit
      when 5
        puts "Thank you for coming in!"
        exit 
      else
        puts "Oops! Option Not Available, please try again!"
        main_menu
      end
    end

    

  def initialize
  @customer_order = []
  @total = []
  @main_dish = [
  {item: "Chicken Sandwich", price: 5.00},
  {item: "Cheeseburger", price: 4.00},
  {item: "Salad", price: 7.00}]
  @side_dish = [
  {item: "Fries", price: 2.00}, 
  {item: "Fruit", price: 2.00},
  {item: "Veggies", price: 2.00},
  {item: "Chips", price: 2.00},
  {item: "Hand Pie", price: 2.00},
  {item: "Cookie", price: 2.00},
  {item: "Brownie", price: 2.00}]
  end

  def order
    puts "Select a Main Dish"
    @main_dish.each_with_index do |dish, index|
      puts "#{index + 1}. #{dish[:item]} - #{dish[:price]}"
    end
    puts "4. Return to Menu"
    # print "> "

    user_order = gets.to_i
    case user_order
    when 1
      puts "Excellent choice!"
      @customer_order << @main_dish[user_order - 1][:item]
      @total << @main_dish[user_order - 1][:price]
      sides
    when 2
      puts "Excellent choice!"
      @customer_order << @main_dish[user_order - 1][:item]
      @total << @main_dish[user_order - 1][:price]
      sides
    when 3
      puts "Excellent choice!"
      @customer_order << @main_dish[user_order - 1][:item]
      @total << @main_dish[user_order - 1][:price]
      sides
    when 4
      main_menu 
    else
      puts "Invalid Choice"
    end
  end

  def sides
    puts "Select Your Sides"
    @side_dish.each_with_index do |dish, index|
      puts "#{index + 1}. #{dish[:item]} - #{dish[:price]}"
    end
    puts "8. No Sides"
    # print "> "

    user_sides = gets.to_i
    case user_sides
    when 1
      puts "Great Choice!"
      @customer_order << @side_dish[user_sides - 1][:item]
      @total << @side_dish[user_sides - 1][:price]
      puts "Would You Like Another Side?"
      puts "Type 'Yes' or 'No'"
      print "> "
      side_choice = gets.strip
      if side_choice == "Yes" 
        sides
      else 
        view_order
      end
    when 2
      @customer_order << @side_dish[user_sides - 1]
      @total << @side_dish[user_sides - 1][:price]
      puts "Great Choice!"
      puts "Would You Like Another Side?"
      puts "Type 'Yes' or 'No'"
      print "> "
      side_choice = gets.strip
      if side_choice == "Yes" 
        sides
      else 
        view_order
      end
    when 3
      @customer_order << @side_dish[user_sides - 1]
      @total << @side_dish[user_order - 1][:price]
      puts "Great Choice!"
      puts "Would You Like Another Side?"
      puts "Type 'Yes' or 'No'"
      # print "> "
      side_choice = gets.strip
      if side_choice == "Yes" 
        sides
      else 
        view_order
      end
    when 4
      @customer_order << @side_dish[user_sides - 1]
      @total << @side_dish[user_order - 1][:price]
      puts "Great Choice!"
      puts "Would You Like Another Side?"
      puts "Type 'Yes' or 'No'"
      print "> "
      side_choice = gets.strip
      if side_choice == "Yes" 
        sides
      else 
        view_order
      end
    when 5
      @customer_order << @side_dish[user_sides - 1]
      @total << @side_dish[user_order - 1][:price]
      puts "Great Choice!"
      puts "Would You Like Another Side?"
      puts "Type 'Yes' or 'No'"
      print "> "
      side_choice = gets.strip
      if side_choice == "Yes" 
        sides
      else 
        view_order
      end
    when 6
      @customer_order << @side_dish[user_sides - 1]
      @total << @side_dish[user_order - 1][:price]
      puts "Great Choice!"
      puts "Would You Like Another Side?"
      puts "Type 'Yes' or 'No'"
      print "> "
      side_choice = gets.strip
      if side_choice == "Yes" 
        sides
      else 
        view_order
      end
    when 7
      @customer_order << @side_dish[user_sides - 1]
      @total << @side_dish[user_order - 1][:price]
      puts "Great Choice!"
      puts "Would You Like Another Side?"
      puts "Type 'Yes' or 'No'"
      print "> "
      side_choice = gets.strip
      if side_choice == "Yes" 
        sides
      else 
        view_order
      end
    when 8
      puts "Oooooh Healthy Guy Over Here"
      view_order
    else
      puts "Invalid Choice"
      sides
    end
  end

  def check_out
    puts "Your Total Is: $#{@total.sum}" 
      puts "" 
    puts "Would You Like to Checkout?"
    puts "Yes or No"
    print "> "
  
    user_checkout = gets.strip
    if user_checkout == "Yes"
      puts "Thank you for your business! Come Again!"
      exit
    else
      main_menu
    end
  end

    def view_order
      @customer_order.each_with_index do |dish, index|
        puts "#{index + 1}. #{dish}"
      end
      check_out
  end
end


# Lady <--- blueprint

Lady.new.main_menu

