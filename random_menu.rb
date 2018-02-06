# Create a program that runs from the Terminal that will create a random menu
# based on several items that you determine.

# Come up with the three arrays of ten items each:
# (Each list should be a different type of food or descriptor for that food).

adjectives = %w[delicious smoky green overdue awsome expensive cheap special grandma foreign]
cooking_styles = %w[fried seared boiled baked grilled aged cold raw special smoked]
foods = %w[salmon bread aspargus beef chicken risotto pasta eggs soup salad]
display_adjec = []
display_style = []
display_food = []
num_of_itens = 10


# Welcome message and prompt the user for a choice of using pre-fixed arrays or
# create their own:
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

# Run code depending on user input
if choice == "1"
  puts "\n"
  print "How many itens would you like to see on your menu?"
  num_of_itens = gets.chomp.to_i
  while num_of_itens < 1 || num_of_itens > 10
    puts "Number invalid. Please choose from 1 to 10 itens"
    print "So how many itens would you like to see on your menu?"
    num_of_itens = gets.chomp.to_i
  end

  # Fill 3 different arrays with random unique numbers:
  puts "\n"
  puts "This is your new menu:"
  puts "\n"

  num_of_itens.times do |i|
    random_num = rand(0..num_of_itens - 1 )
    while display_adjec.include?(random_num)
      random_num = rand(0..num_of_itens - 1 )
    end
    display_adjec << random_num
  end

  num_of_itens.times do |i|
    random_num = rand(0..num_of_itens - 1 )
    while display_style.include?(random_num)
      random_num = rand(0..num_of_itens - 1 )
    end
    display_style << random_num
  end

  num_of_itens.times do |i|
    random_num = rand(0..num_of_itens - 1 )
    while display_food.include?(random_num)
      random_num = rand(0..num_of_itens - 1 )
    end
    display_food << random_num
  end


  # Display itens:
  num_of_itens.times do |i|
    puts "#{i + 1}. #{adjectives[display_adjec[i]]} #{cooking_styles[display_style[i]]} #{foods[display_food[i]]}"
  end


else

  # Clear inital arrays:
  adjectives.clear
  cooking_styles.clear
  foods.clear

  #Prompt user for amount of itens to generate:
  puts "\n"
  print "How many itens would you like to see on your menu?"
  num_of_itens = gets.chomp.to_i
  # Validade numbers between 1 and 20:
  while num_of_itens < 1 || num_of_itens > 20
    puts "Number invalid. You can have 1 to 20 itens on your new menu!"
    print "So how many itens would you like to have?"
    num_of_itens = gets.chomp.to_i
  end

  # Colect adjectives:
  puts "\n"
  puts "Please enter #{num_of_itens}  ADJECTIVES:"
  num_of_itens.times do |i|
    print "#{i + 1}. "
    item = gets.chomp
    adjectives << item
  end

  # Colect cooking styles:
  puts "\n"
  puts "Please enter #{num_of_itens} COOKING STYLES:"
  num_of_itens.times do |i|
    print "#{i + 1}. "
    item = gets.chomp
    cooking_styles << item
  end

  # Colect types of food:
  puts "\n"
  puts "Please enter #{num_of_itens}  TYPES OF FOOD:"
  num_of_itens.times do |i|
    print "#{i + 1}. "
    item = gets.chomp
    foods << item
  end

  # Fill 3 different arrays with random unique numbers:
  puts "\n"
  puts "This is your new menu:"
  puts "\n"

  num_of_itens.times do |i|
    random_num = rand(0..num_of_itens - 1 )
    while display_adjec.include?(random_num)
      random_num = rand(0..num_of_itens - 1 )
    end
    display_adjec << random_num
  end

  num_of_itens.times do |i|
    random_num = rand(0..num_of_itens - 1 )
    while display_style.include?(random_num)
      random_num = rand(0..num_of_itens - 1 )
    end
    display_style << random_num
  end

  num_of_itens.times do |i|
    random_num = rand(0..num_of_itens - 1 )
    while display_food.include?(random_num)
      random_num = rand(0..num_of_itens - 1 )
    end
    display_food << random_num
  end

  # Display itens:
  num_of_itens.times do |i|
    puts "#{i + 1}. #{adjectives[display_adjec[i]]} #{cooking_styles[display_style[i]]} #{foods[display_food[i]]}"
  end

end

puts "\n"
