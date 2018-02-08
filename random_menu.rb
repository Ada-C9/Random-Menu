# Create a program that runs from the Terminal that will create a random menu
# based on several items that you determine.


##############################################################
# METHODS AND INITIAL VARIABLES:

# Come up with the three arrays of ten items each:
# (Each list should be a different type of food or descriptor for that food).
adjectives = %w[delicious smoky green overdue awsome expensive cheap special grandma foreign]
cooking_styles = %w[fried seared boiled baked grilled aged cold raw special smoked]
foods = %w[salmon bread aspargus beef chicken risotto pasta eggs soup salad]
display_adjec = []
display_style = []
display_food = []
num_of_itens = 10

# Method to retrieve what the size of the menu should be:
def define_size_of_menu (max_valid)
  print "How many itens would you like to see on your menu? "
  num_of_itens = gets.chomp.to_i
  while num_of_itens < 1 || num_of_itens > max_valid
    puts "Number invalid. Please choose from 1 to #{max_valid} itens "
    print "So how many itens would you like to see on your menu? "
    num_of_itens = gets.chomp.to_i
  end
  return num_of_itens
end

# Method for generating and populating a array with random numbers:
def create_rand_num (random_num_array, num_of_itens)
  num_of_itens.times do |i|
    random_num = rand(0..num_of_itens - 1 )
    while random_num_array.include?(random_num)
      random_num = rand(0..num_of_itens - 1 )
    end
    random_num_array << random_num
  end
end

#Method to collect information for new menu:
def collect_new_itens (num_of_itens, type_of_item)
  num_of_itens.times do |i|
    print "#{i + 1}. "
    item = gets.chomp
    type_of_item << item
  end
end

  ##############################################################


  # Display welcome message and prompt the user for a choice of using pre-fixed arrays or
  # create their own:
  puts "\n"
  puts "Hello! This is a random menu program!"
  puts "\n"
  puts "You can:
  1 - Use our itens
  2 - Create you own itens."
  puts "\n"
  print "Please select your choice (1 or 2): "
  choice = gets.chomp
  # Validade choice input:
  while choice != "1" && choice != "2"
    puts "Invalid choice!"
    print "Please select your choice (1 or 2): "
    choice = gets.chomp
  end

  # Run code depending on user input/choice:
  if choice == "1"

    # Define menu size by using the define_size_of_menu method:
    max_valid = adjectives.length
    num_of_itens = define_size_of_menu(max_valid)

    # Fill 3 different arrays with random unique numbers using the create_rand_num method:
    create_rand_num(display_adjec, num_of_itens)
    create_rand_num(display_style, num_of_itens)
    create_rand_num(display_food, num_of_itens)

    # Display itens:
    puts "\n"
    puts "******    ******    ******"
    puts "This is your new menu: "
    puts "\n"

    num_of_itens.times do |i|
      puts "#{i + 1}. #{adjectives[display_adjec[i]]} #{cooking_styles[display_style[i]]} #{foods[display_food[i]]}"
    end


  else
    puts "\n"
    # Clear inital arrays:
    adjectives.clear
    cooking_styles.clear
    foods.clear

    # Define menu size by using the define_size_of_menu method:
    max_valid = 20
    num_of_itens = define_size_of_menu(max_valid)

    #Colect itens for the new menu:
    puts "Please enter #{num_of_itens} ADJECTIVES:"
    collect_new_itens(num_of_itens, adjectives)
    puts "\n"
    puts "Please enter #{num_of_itens} COOKING STYLES:"
    collect_new_itens(num_of_itens, cooking_styles)
    puts "\n"
    puts "Please enter #{num_of_itens} TYPES OF FOODS:"
    collect_new_itens(num_of_itens, foods)

    # Fill 3 different arrays with random unique numbers using the create_rand_num method:
    create_rand_num(display_adjec, num_of_itens)
    create_rand_num(display_style, num_of_itens)
    create_rand_num(display_food, num_of_itens)

    # Display itens:
    puts "\n"
    puts "******    ******    ******"
    puts "This is your new menu: "
    puts "\n"

    num_of_itens.times do |i|
      puts "#{i + 1}. #{adjectives[display_adjec[i]]} #{cooking_styles[display_style[i]]} #{foods[display_food[i]]}"
    end

  end

  puts "\n"
