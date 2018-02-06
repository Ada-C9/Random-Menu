@fav_food = ['cake', 'sushi', 'salmon', 'pizza', 'chicken', 'pasta', 'potatoes', 'enjara', 'tacos', 'strawberries']
@texture  = ['slimy', 'thin', 'hairy', 'smothered', 'fried', 'aged', 'glazed', 'gushy', 'prickly', 'oozying']
@style    = ['sliced', 'pickled', 'stacked', 'thick-cut', 'dry-aged', 'fermented', 'boiled', 'wrapped', 'bunless', 'deep-fried']
@NUMBER_OF_ATTEMPTS = 3

puts "\nWelcome user! Please enter a choice from the following menu...\n\n"

def user_menu()
  puts "Enter A - let us guess your favorite food. "
  puts "Enter B - enter your own favorite foods. \n\n"

  print "Your menu choice: "
  selection = gets.chomp.upcase
  counter = 0
  while selection != 'A' && selection != 'B'
    counter+=1
    print "Please enter a valid menu choice!"
    selection = gets.chomp
    puts "You have #{@NUMBER_OF_ATTEMPTS-counter+1}"
    if counter >= @NUMBER_OF_ATTEMPTS
      puts "You have exceeded the required amounts of guesses, default selection is computer generated list (A).\n"
      selection = 'A'
      break
    end
  end
  if selection == 'A'
    user_v = number_of_items()
    printing_menu(user_v)
  elsif selection == 'B'
    entered_menu_items()
  end
end

def entered_menu_items()
  print "\nHow many items would you like to enter? "
  @fav_food.clear
  @texture.clear
  @style.clear
  user_entered_amount = gets.chomp.to_i

  user_entered_amount.times do |i|
    print "Food item #{i+1}: "
    @fav_food[i] = gets.chomp
    print "Texture of item #{i+1}: "
    @texture[i] = gets.chomp
    print "Style of item #{i+1}: "
    @style[i] = gets.chomp
  end

  printing_menu(user_entered_amount)
end

# Function gathers input from
def number_of_items()
  print "Please enter a number of items you're interested in seeing: "
  number_of_items = gets.chomp
  number_of_items = confirm_a_number(number_of_items)
  count = 0
  while number_of_items > @fav_food.length
    count+=1
    print "Please enter a value less than the size of the menu: "
    puts  "You have #{@NUMBER_OF_ATTEMPTS-count+1} left"
    number_of_items = gets.chomp
    number_of_items = confirm_a_number(number_of_items)
    if count >= @NUMBER_OF_ATTEMPTS
      puts "You have exceeded the required amounts of guesses, default amount of values will be (5).\n"
      break
    end
  end
  return number_of_items
end

# Function to confirm user input is of integer type.
def confirm_a_number (any_number)
  while any_number.to_i.to_s != any_number
    print "Please enter an integer: "
    any_number = gets.chomp
  end
  return any_number.to_i
end

# Function prints menu items to the user
def printing_menu(number_of_items)
  rand_val = rand(0..@fav_food.length)
  number_of_items.times do |i|

    # Traps code in a loop if index selected is outside of array. Rand() range is dynamic based on array size.
    while @style[rand_val] == nil && @texture[rand_val] == nil && @fav_food[rand_val] == nil
      rand_val = rand(0..@fav_food.length)
      @style[rand_val] =  @style[rand_val]
      @texture[rand_val] = @texture[rand_val]
      @fav_food[rand_val] = @fav_food[rand_val]
    end

    print "Item #{i+1}: #{@texture[rand_val]} "
    print "#{@style[rand_val]}"
    print " #{@fav_food[rand_val]} \n"

    # Deletes elements from menu arrays after they have been displayed to the user.
    @style.delete_at(rand_val)
    @texture.delete_at(rand_val)
    @fav_food.delete_at(rand_val)
  end
end

user_menu()
