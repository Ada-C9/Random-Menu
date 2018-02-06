# Kirsten Schumy
# Ada Menu Generator
# February 6, 2018
#
# This program prints a menu of randomly generated food items either from the
# default options or based on values provided by the user.

# Prints intro.
def print_intro
  puts "Welcome to the Menu Generator!"
  puts "A menu of random food items, each with a description (such as"
  puts "'hot' or 'sweet'), a cooking method (such as 'baked' or 'fried')"
  puts "and a food (such as 'chicken' or 'tofu') will be generated.\n\n"
end

# Prompts the user for 'default' or 'custom' until the user provides one of
# these two options. Returns the user's selection.
def get_default_or_custom
  loop do
    puts "Please enter 'default' to use the default options or 'custom'"
    print "to enter your own: "
    default_or_custom = gets.chomp.downcase
    redo if default_or_custom != "default" && default_or_custom != "custom"
    return default_or_custom
  end
end

# Until the user provides a number greater than or equal to one and less than
# provided max (if max is not nil), prompts the user for a number for provided
# items_type. Returns the number.
def get_number(items_type, max)
  loop do
    print "\nHow many #{items_type} would you like to have? "
    num_of_items = gets.chomp.to_i
    # max is 'nil' if there is no max
    return num_of_items if num_of_items >= 1 && (max.nil? || num_of_items <= max)
    num_of_items < 1 ? (puts "Please enter a number greater than 0.") :
      (puts "Please enter a number less than or equal to #{max}.")
  end
end

# Takes in user-provided item for provided items_type. Returns the item if the
# it contains at least one character and is not already an item in provided
# input_items.
def get_user_item_if_valid(items_type, input_items)
  possible_item = gets.chomp.strip.gsub(/\s+/, " ")
  if possible_item.empty?
    puts "Please provide a #{items_type}"
  elsif input_items.any? { |item| item.casecmp?(possible_item) } # no duplicates
    puts "Please provide a non-duplicate for #{items_type}"
  else
    return possible_item
  end
end # returns 'nil' if user provides empty String or a duplicate value

# Prints message about
def print_prompt(num, items_type)
  print "Please enter #{num} unique "
  # removes 's' to make grammatically correct if only one of items_type
  num > 1 ? (puts "#{items_type}.") : (puts "#{items_type.delete_suffix("s")}.")
end

# Prompts user for items for items_type type until the user has entered provided
# num_of_items items. Returns the list.
def get_custom_list(num_of_items, items_type)
  input_items = [] # stores user-provided items for items_type
  (1..num_of_items).each do |item_num|
    print "  #{item_num}. "
    user_item = get_user_item_if_valid(items_type, input_items)
    # user_item is 'nil' if user provided empty String or a duplicate value
    user_item.nil? ? redo : input_items.push(user_item)
  end
  return input_items
end

# Prompts user for the amount of provided items_type items and each item.
# Returns a list of provided items_type items.
def get_custom(items_type)
  num_of_items = get_number(items_type, nil) # 'nil' for no max
  print_prompt(num_of_items, items_type)
  return get_custom_list(num_of_items, items_type)
end

# Pre: provided items_type must be 'descriptions', 'cooking methods', or
# 'foods'. Otherwise, returns 'nil'.
#
# Returns the default values of provided items_type.
def get_default(items_type)
  case items_type
  when "descriptions"
    return %w[sticky steamy hot spicy bitter cheesy vegan smelly crunchy sweet]
  when "cooking methods"
    return %w[baked fried steamed grilled smoked fermented slow-cooked
      microwaved uncooked roasted]
  when "foods"
    return %w[salmon pasta tofu chicken pork ham chowder sushi pizza pancakes]
  end
end

# Pre: If default_or_custom is 'default', provided items_type must be
# 'descriptions', 'cooking methods', or 'foods'; otherwise returns 'nil'.
#
# If provided default_or_custom is 'default', returns the default values for
# provided items_type. Otherwise, prompts user to enter item of items_type
# and returns the user-provided items.
def get_options(default_or_custom, items_type)
  default_or_custom == "default" ? (return get_default(items_type)) :
    (return get_custom(items_type))
end

# Using the descriptions, cooking methods, and foods lists from the provided
# options_type list, prints the number of menu items as dictated by the user.
def print_menu(options_types)
  num_of_items = get_number("menu items", options_types.min.length)
  puts "\nHere's your menu:"
  (1..num_of_items).each do |item_num|
    print "  #{item_num}."
    options_types.each { |type| print " #{type.delete_at(rand(type.length - 1))}" }
    puts
  end
end

# ------------------------------------------------------------------------- main
print_intro

default_or_custom = get_default_or_custom

descriptions = get_options(default_or_custom, "descriptions")
cooking_methods = get_options(default_or_custom, "cooking methods")
foods = get_options(default_or_custom, "foods")

print_menu([descriptions, cooking_methods, foods])
