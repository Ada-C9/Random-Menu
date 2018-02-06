#Random Menu Homework

#PRE-DEFINED ARRAYS
adj_arr = ["cheesy", "hot", "cold", "sticky", "spicy", "hard", "nasty", "soft", "tepid", "luke-warm"]

cooking_styles_arr = ["baked", "fried", "sauteed", "boiled", "frozen", "roasted", "steamed", "frosted", "deep-fried", "chopped"]

food_arr = ["bread", "salmon", "cheese", "cake", "shrimp", "cupcakes", "spinach", "lettuce", "gyros", "cookies"]

# #PROMPTS USER FOR INPUT FOR EACH ARRAY TYPE
# adj_arr = []
# puts "Please input adjectives separated by commas."
# adj_arr = gets.each_line('') {}
# puts "adj_arr is #{adj_arr}"

#PROMPTS USER FOR INPUT
puts "How many menu items would you like to see (between 1 & 10): "
num_of_items = gets.chomp.to_i
#checks for valid user input
until num_of_items <= 10 && num_of_items >= 1
  puts "\nInvalid input. Please choose a number between 1 & 10."
  num_of_items = gets.chomp.to_i
end

#OUTPUTS MENU ITEMS
puts "\nMENU ITEMS: "
i = 0
while i < num_of_items
  #generates random number b/w 1 and the current length of the array for each array then outputs in list format
  rand_adj_arr = adj_arr[rand(adj_arr.length)]
  rand_cooking_styles_arr = cooking_styles_arr[rand(cooking_styles_arr.length)]
  rand_food_arr = food_arr[rand(food_arr.length)]
  puts "#{i + 1}. #{rand_adj_arr} #{rand_cooking_styles_arr} #{rand_food_arr}"

  #deletes items already used/outputted
  adj_arr.delete(rand_adj_arr)
  cooking_styles_arr.delete(rand_cooking_styles_arr)
  food_arr.delete(rand_food_arr)

  i += 1
end
