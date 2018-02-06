# three arrays for the different menu items and descriptors (predefined)
adjs = ["tasty", "squishy", "slimy", "delicious", "decadent", "salty", "tangy", "questionably", "inedible", "savory"]
cook_styles = ["deep-fried", "stirred", "sauteed", "broiled", "baked", "blanched", "toasted", "steamed", "grilled", "smoked"]
foods = ["crepes", "carrots", "cabbage", "custard", "clam chowder", "crab", "chicken", "camembert", "cake", "corn on the cob"]

# three arrays to be populated by user
user_adjs = []
user_cook_styles = []
user_foods = []

# intro and start to program
puts "Would you like to see a random menu? YES or NO?"
start = gets.chomp.upcase

# conditional to take user input and run random_menu
if start == "YES"
  # request for number of items on the menu
  puts "How many items would you like on your menu?"
  num = gets.chomp.to_i
  if num > 0 # confirming user is actually requesting a menu
    # input for user populated vs predefined arrays
    puts "Would you like to create your own menu? YES or NO?"
    participation = gets.chomp.upcase
    if participation == "YES"
      # code for user populating arrays
      puts "What are some adjectives you would use to describe the food?"
      num.times do |k|
        # loop to get user inputs for adjectives
        print "#{k + 1}."
        user_adjs << gets.chomp
      end
      puts "What cooking styles would you use on the chow?"
      num.times do |l|
        # loop to get user inputs for cooking styles
        print "#{l + 1}."
        user_cook_styles << gets.chomp
      end
      puts "Now, the important part. What are the foods?"
      num.times do |m|
        # loop to get user inputs for foods
        print "#{m + 1}."
        user_foods << gets.chomp
      end
      num.times do |x|
        # loop to find a random elements the remove them from arrays
        adj = user_adjs.sample
        user_adjs.delete(adj)
        cook_style = user_cook_styles.sample
        user_cook_styles.delete(cook_style)
        food = user_foods.sample
        user_foods.delete(food)
        # output for the menu
        puts "#{x + 1}. #{adj} #{cook_style} #{food}"
      end
    elsif participation == "NO" # code for predefined arrays
      num.times do |x| # loop to find a random elements the remove them from arrays
        adj = adjs.sample
        adjs.delete(adj)
        cook_style = cook_styles.sample
        cook_styles.delete(cook_style)
        food = foods.sample
        foods.delete(food)
        # output for the menu
        puts "#{x + 1}. #{adj} #{cook_style} #{food}"
      end
    else
      puts "I think you're confused."
      # response if user gives a response that is neither "yes" nor "no"
    end
  else
    puts "Really?"
    # response if user enters 0 or a non-number answer for the number of meals
  end
else
  puts "Why are you even here?"
  # response if user doesn't want a menu
end
