method_array = ["deep fried", "roasted", "sauted", "slow cooked", "smoked", "steamed", "teriyaki", "boiled", "microwaved", "baked"]
taste_array = ["sweet", "sour", "salty", "hot", "creamy", "bitter", "umami", "buttery", "juicy", "yummy"]
food_array = ["chicken", "beef", "cheeze", "apple", "salad", "broccoli", "fish", "burrito", "steak", "tofu"]
message_array = []
number_of_item = 11

puts "How many items do you want to check out? Pick a number between 0 and 10."
number_of_item = gets.chomp.to_i
while number_of_item > food_array.size
  puts "Please enter again."
  number_of_item = gets.chomp.to_i
end

def random_number(max)
  r = Random.new
  index = r.rand(0...max)
end

def delete_current_item(array, index)
  array.delete_at(index)
end

number_of_item.times { |i|
  index_method = random_number(number_of_item - i)
  index_taste = random_number(number_of_item - i)
  index_food = random_number (number_of_item - i)
  message_array[i] = "#{ i + 1 }. " + method_array[index_method] + " " + taste_array[index_taste] + " " + food_array[index_food]
  delete_current_item(method_array, index_method)
  delete_current_item(taste_array, index_taste)
  delete_current_item(food_array, index_food)
}

puts "Here is your list:"
puts message_array
