=begin
This is assignment 1 for Ada cohort 9
Assigned:   18-2-05 pm
Due:        18-2-06 am (before class)

Specs:
OVERALL:  Randomly access the contents of 3 10-item arrays to produce a
          10-item menu.

SPECIFICS:    * Each item should be in the format "Adj, cookingstyle, foodnoun"
              * Should run in the terminal
              * Should be a numbered list of 1-10 beginning with 1
              * Each array-item should be used exactly once.
              * Should accept user input (OPTIONAL)
              * Should allow the user to specify the number of menu items they
                want to see. (OPTIONAL)
=end


#  CREATION OF THE NECESSARY arrays

initial_adjectives = %w[non-alcoholic hopeless questionable salty crispy bankrupt
sentient bioluminescent wrong-headed artisanal]

initial_cookstyles = %w[refactored manifold-roasted smashed cheese-slathered
spatchcocked bedazzled deep-fried beer-battered macerated unpeeled]

initial_foodnouns = %w[brie pheasant potatoes tofurkey parsnips
purslane monkfish watercress trout caviar]

# RANDOMLY SORT ARRAYS

random_adjectives = initial_adjectives.sort_by {rand}
random_cookstyles = initial_cookstyles.sort_by {rand}
random_foodnouns = initial_foodnouns.sort_by {rand}

#JUST FOR TESTING:
#puts random_adjectives.inspect

# INTRODUCE PROGRAM AND GREET USER

puts "\n\nWelcome to the STOCHASTIC SAVORIES!\n\n"
puts "Here, you can order from an array (heh) of different dishes, including:\n\n"

# CREATE DISH NAMES AND STORE IN NEW ARRAY

all_dish_names = []
10.times do |i|
  temp_dishname = random_adjectives[i].capitalize + ", " + random_cookstyles[i] + " " + random_foodnouns[i]
  all_dish_names << temp_dishname
end

# PRINT OUT THE LIST OF DISH NAMES

all_dish_names.each_with_index do |dish, counter|
    puts "\t#{counter + 1}. #{dish}"
end

# THANK THE USER AND CLOSE

puts "\n\nThanks for visiting STOCHASTIC SAVORIES!"
