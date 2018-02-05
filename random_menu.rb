method_array = ["deep fried", "roasted", "sauted", "slow cooked", "smoked", "steamed", "teriyaki", "boiled", "microwaved", "baked"]
taste_array = ["sweet", "sour", "salty", "hot", "creamy", "bitter", "umami", "buttery", "juicy", "yummy"]
food_array = ["chicken", "beef", "cheeze", "apple", "salad", "broccoli", "fish", "burrito", "steak", "tofu"]
message_array = []

def random_number(max)
  r = Random.new
  index = r.rand(0...max)
end

def delete_current_item(array, index)
  array.delete_at(index)
end

10.times { |i|
  index_method = random_number(10 - i)
  index_taste = random_number(10 - i)
  index_food = random_number (10 - i)
  message_array[i] = "#{ i + 1 }. " + method_array[index_method] + " " + taste_array[index_taste] + " " + food_array[index_food]
  delete_current_item(method_array, index_method)
  delete_current_item(taste_array, index_taste)
  delete_current_item(food_array, index_food)
}

puts message_array
