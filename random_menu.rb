require 'colorize'
# Display name
puts "
*************************
RANDOM MENU GENERATOR
*************************"

# Empty string
puts ""

# Welcome message
puts "*Welcome! This is today's Menu.*"
wish = "
     ____                     __
    /   )                    / |                               ,
---/__ /-----__----__-------/__|------__------__----__--_/_------_/_-
  /    )   /   ) /   )     /   |    /   )   /   ) /___) /    /   /
_/____/___(___/_/___/_____/____|___/___/___/___/_(___ _(_ __/___(_ __
                                  /       /
                                 /       /                           ".colorize(:light_blue).on_green.underline

# Display ascii text
puts wish

# Array of adjectives and styles
adjectives = ["Hot", "Cold", "Rotten", "Smelly", "Soft", "Creamy", "Delicious", "Yummy", "Sour", "Bitter"]
cooking_styles = ["panfried", "grilled", "deepfried", "baked", "sauted", "stirfried", "seasoned", "shallowed", "boiled", "roasted"]
foods = ["potato", "salad", "egg", "noodles", "rice", "omlette", "chicken", "lamb", "beans", "brownrice"]

# Method to create menu provided by user items
def create_menu(adjectives, cooking_styles)

  # Prompt user to enter upto 10 items
  puts "You can add upto 10 food items to generate your own menu. So how many items you want to add."
  count = gets.chomp
  # Count should match regex for digits and  it should be any number between 1 to 10
  until count =~ /(?=.*[0-9])/ && count.to_i <= 10 && count.to_i > 0
    # Display warning message and prompt user again.
    puts "Invalid Entry!".red.on_light_blue.blink
    puts "Enter a number between 1 to 10. How many items you want to add?"
    count = gets.chomp
  end
  # Create an array
  user_items = []
  # Ask favourite items from the user
  count.to_i.times do |index|
    puts "Please enter your favourite food items.Example: rice, salad, taco etc."
    food_items = gets.chomp.downcase
    # Until food items match regex and it doesn't include unique items display warning message and prompt user to enter again
    until food_items =~ /^[a-zA-Z\s]+$/ && !user_items.include?(food_items)
      if user_items.include?(food_items)
        puts "Item already exists: #{user_items.inspect}!"
      else
        puts "Invalid Entry!".red.on_light_blue.blink
      end
      puts "Please enter your favourite food items.Example: rice, salad, taco etc."
      food_items = gets.chomp.downcase
    end
    # Push food items in an array
    user_items << food_items
  end
  create_menu = []
  # Return an array of shuffled objects
  adj = adjectives.shuffle
  styles = cooking_styles.shuffle
  items = user_items.shuffle
  # Creates a list of menu items
  user_items.length.times do |index|
    create_menu  << "#{index + 1}. #{adj[index]} #{styles[index]} #{items[index]}".blue
  end
  # Display menu
  puts create_menu
  puts ""
  puts ""

end

def fixed_menu(adjectives, cooking_styles, foods)

# Create an array
  fixed_menu = []
  adj = adjectives.shuffle
  styles = cooking_styles.shuffle
  items = foods.shuffle
  # Creates a list of menu items
  foods.length.times do |index|
    fixed_menu << "#{index + 1}. #{adj[index]} #{styles[index]} #{items[index]}".blue
  end
  # Display menu
  puts fixed_menu
  puts ""
  puts ""

end

puts "Do you want to go for fixed menu or create your own. Enter 0 for create menu or 1 to fixed menu."
option = gets.chomp.to_i

# Until user enter either 0 or 1, display warning and prompt the user
until option == 0 || option == 1
  puts "Invalid Entry!".red.on_light_blue.blink
  puts "Do you want to go for fixed menu or create your own. Enter 0 for fixed menu or 1 to create menu."
  option = gets.chomp.to_i
end

# Based on option display menu type
if option == 0
  create_menu(adjectives, cooking_styles)
else
  fixed_menu(adjectives, cooking_styles, foods)
end
