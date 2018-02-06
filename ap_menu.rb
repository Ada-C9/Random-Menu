# welcome mesasage for random menu generator

puts "You want to eat some funky stuff right?"
puts

# create three arrays of food types

adjectives = ["silky", "scalloped", "puffy", "pink", "truffled", "fine",
"saucy", "spikey", "firey", "cheesy"]

style = ["smoked", "seared", "grated", "malt", "baked", "raw", "spicy",
"spun", "golden", "crusted"]

food = ["mochi", "poke", "sushi", "noodles", "pizza", "mushrooms", "bao",
"curry", "rice", "tacos"]

num = 0

# randomly pick one item from each array in a list of 10 numbered items.

# base assignment compeleted:

#10.times do
#  num = num += 1
#  puts "#{num}. #{adjectives.sample} #{style.sample} #{food.sample}"
#end

# Optional enhancements:

# 1)Expand your solution to ensure that no descriptive term
# in a menu item is ever repeated.
# 2)Expand your solution to allow the user to determine
# how many items they'd like to see via user input.
# 3)Instead of using hardcoded or predefined arrays,
# make your program accept user input.


#for enhancement #2:

puts "How many menu items would you like to see? (Please choose 10 or under):"

item_count = gets.chomp.to_i

while item_count > 10 || item_count <= 0
  puts "Please enter a number between 1-10:"
  item_count = gets.chomp.to_i
end

puts "\n\n Great! Here are #{item_count} menu items to choose from:\n\n"

=begin
item_count.times do
  num = num += 1
  puts "#{num}. #{adjectives.sample} #{style.sample} #{food.sample}"
end
=end


# for enhancement #1
# I want to call the random element from each array then delete it
# from the array.
# found this on overstack:
# https://stackoverflow.com/questions/10988525/is-there-a-particular-function-to-retrieve-then-delete-random-array-element


item_count.times do
  num = num += 1
  puts
  puts "#{num}. #{adjectives.delete_at(rand(adjectives.length))} #{style.delete_at(rand(style.length))} #{food.delete_at(rand(food.length))}"
end
