# version 1
# arrays to hold food descriptors
# adjectives = ["Fresh", "Crunchy", "Tangy", "Spicy", "Sweet", "Soft", "Tart", "Smokey", "Bitter", "Salty"]
# methods = ["baked", "fried", "steamed", "frozen", "boiled", "sauteed", "fire roasted", "broiled", "barbecued", "grilled"]
# foods = ["pasta", "shrimp", "sushi", "potato", "burger", "veggies", "fish", "chicken", "pizza", "pie"]
#
# # loop over arrays, print random menu items
# 10.times do |item|
#   puts "#{item + 1}. #{adjectives.sample} #{methods.sample} #{foods.sample}"
# end

# Version 2: no repeated menu items
# arrays to hold food descriptors
# adjectives = ["Fresh", "Crunchy", "Tangy", "Spicy", "Sweet", "Soft", "Tart", "Smokey", "Bitter", "Salty"]
# methods = ["baked", "fried", "steamed", "frozen", "boiled", "sauteed", "fire roasted", "broiled", "barbecued", "grilled"]
# foods = ["pasta", "shrimp", "sushi", "potato", "burger", "veggies", "fish", "chicken", "pizza", "pie"]
#
# # loop over arrays, print random menu items
# 10.times do |item|
# # Assign random variables
#   adjective = adjectives.sample
#   method = methods.sample
#   food = foods.sample
#
#   puts "#{item + 1}. #{adjective} #{method} #{food}"
# # Removie items from arrays
#   adjectives.delete(adjective)
#   methods.delete(method)
#   foods.delete(food)
# end

# Version 3: Account for user input for number of menu items
# arrays to hold food descriptors
# adjectives = ["Fresh", "Crunchy", "Tangy", "Spicy", "Sweet", "Soft", "Tart", "Smokey", "Bitter", "Salty"]
# methods = ["baked", "fried", "steamed", "frozen", "boiled", "sauteed", "fire roasted", "broiled", "barbecued", "grilled"]
# foods = ["pasta", "shrimp", "sushi", "potato", "burger", "veggies", "fish", "chicken", "pizza", "pie"]
#
# puts "How many menu items would you like to choose from? \nYou may pick up to #{adjectives.length} items."
# menu_length = gets.chomp.to_i
#
# puts "\nHere is your one of a kind #{menu_length} item menu:"
# # loop over arrays, print random menu items
# menu_length.times do |item|
# # Assign random variables
#   adjective = adjectives.sample
#   method = methods.sample
#   food = foods.sample
# # Output random menu
#   puts "#{item + 1}. #{adjective} #{method} #{food}"
# # Removie items from arrays
#   adjectives.delete(adjective)
#   methods.delete(method)
#   foods.delete(food)
# end

# Version 4: Account for user inputs to build menu items
# User input to determine if hard coded or new menu
puts "To personalize your experience we ask you to choose from our house menu\nor build your own."

puts "Would you like to make your own menu?\n type yes or no"
answer = gets.chomp.upcase

# loop until user provides appropriate response
until answer == "YES" || answer == "NO"
  puts "Would you like to make your own menu?\n type yes or no"
  answer = gets.chomp.upcase
end

if answer == "NO"

  adjectives = ["Fresh", "Crunchy", "Tangy", "Spicy", "Sweet", "Soft", "Tart", "Smokey", "Bitter", "Salty"]
  methods = ["baked", "fried", "steamed", "frozen", "boiled", "sauteed", "fire roasted", "broiled", "barbecued", "grilled"]
  foods = ["pasta", "shrimp", "sushi", "potato", "burger", "veggies", "fish", "chicken", "pizza", "pie"]

  puts "How many menu items would you like to choose from? \nYou may pick up to #{adjectives.length} items."
  menu_length = gets.chomp.to_i

  puts "\nHere is your one of a kind #{menu_length} item menu:"
  # loop over arrays, print random menu items
  menu_length.times do |item|
  # Assign random variables
    adjective = adjectives.sample
    method = methods.sample
    food = foods.sample
  # Output random menu
    puts "#{item + 1}. #{adjective} #{method} #{food}"
  # Removie items from arrays
    adjectives.delete(adjective)
    methods.delete(method)
    foods.delete(food)
  end
else
  # accept user inputs for menu
  puts "How many items would you like to put on your menu?"
  menu_length = gets.chomp.to_i

  adjectives = Array.new(menu_length)
  menu_length.times do |item|
    print "Enter a food adjective:\t"
    adjectives[item] = gets.chomp.capitalize
  end
  puts "\n"
  methods = Array.new(menu_length)
  menu_length.times do |item|
    print "Enter a cooking method:\t"
    methods[item] = gets.chomp
  end
  puts "\n"
  foods = Array.new(menu_length)
  menu_length.times do |item|
    print "Enter a type of food:\t"
    foods[item] = gets.chomp
  end

# puts "\nHere is your one of a kind #{menu_length} item menu:"
#  # loop over each array item to create unique menu
#   menu_length.times do |item|
#   # Assign random variables
#     # adjective = adjectives.sample
#     # method = methods.sample
#     # food = foods.sample
#   # Output random menu
#     puts "#{item + 1}. #{adjective} #{method} #{food}"
#   # Removie items from arrays
#     # adjectives.delete(adjective)
#     # methods.delete(method)
#     # foods.delete(food)
#   end

  puts "\nHere is your one of a kind #{menu_length} item menu:"
   # loop over each array item to create unique menu
    menu_length.times do |item|
    # Assign and remove in single step
      adjective = adjectives.delete_at(rand(adjectives.length))
      method = methods.delete_at(rand(methods.length))
      food = foods.delete_at(rand(foods.length))
    # Output random menu
      puts "#{item + 1}. #{adjective} #{method} #{food}"
    end
end
