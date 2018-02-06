# Program to print the random Menu

#adjectives = [ "hot","sour","crunchy","smooth","spicy","sweet","salty","creamy","dry","soft"]
#cooking_styles = ["fried","baked","steamed","smoked","sauted","charboiled","mexican","chinese","thai","cooked"]
#foods = ["cake","dumplings","tacos","beans","burrito","pizza","clam","pasta","rice","noodles"]

# To print a user generated random menu
# Array for storing adjectives
adjectives_array = Array.new
# Array for storing cookinf cooking styles
cookingstyle_array = Array.new
# Array for storing foods_rand
foods_array = Array.new
# user input to have number of items in the menu
print " Number of items in the menu "
no_of_items = gets.chomp.to_i

# prompting for user input to generate menu items
no_of_items.times do
  print " Enter the adjectives of the menu:\t"
  adjectives = gets.chomp
  adjectives_array.push(adjectives)
  print " Enter the cooking_style of the menu:\t "
  cookingstyle = gets.chomp
  cookingstyle_array.push(cookingstyle)
  print " Enter the foods u want in the menu:\t"
  foods = gets.chomp
  foods_array.push(foods)
end

menucount = no_of_items - 1
print "How many items do you want to see in menu :  "
items_to_display = gets.chomp.to_i
# To check whether user-chosen number of items is not larger than the number of items we have in  arrays.
if items_to_display  < no_of_items

# To select the menu items randomly
  no_of_items.times do |i|
    adj_rand = rand(0..menucount)
    cook_rand = rand(0..menucount)
    foods_rand = rand(0..menucount)
    print " #{i+1}. #{adjectives_array[adj_rand]} #{ cookingstyle_array[cook_rand]} #{foods_array[foods_rand]}\n "
    menucount = menucount-1
    # To ensure that no descriptive term in a menu item is ever repeated
    adjectives_array.delete_at(adj_rand)
    cookingstyle_array.delete_at(cook_rand)
    foods_array.delete_at(foods_rand)
  end
else print " Items you want to display are more than what we have in the menu "
end
