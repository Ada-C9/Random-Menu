method_array = ["deep fried", "roasted", "sauted", "slow cooked", "smoked", "steamed", "teriyaki", "boiled", "microwaved", "baked"]
taste_array = ["sweet", "sour", "salty", "hot", "creamy", "bitter", "umami", "buttery", "juicy", "yummy"]
food_array = ["chicken", "beef", "cheeze", "apple", "salad", "broccoli", "fish", "burrito", "steak", "tofu"]
message_array = []

def random_number
  r = Random.new
  index = r.rand(0...10)
end

10.times { |i|
  index_method = random_number
  index_taste = random_number
  index_food = random_number
  message_array[i] = "#{ i + 1 }. " + method_array[index_method] + " " + taste_array[index_taste] + " " + food_array[index_food]
}

puts message_array
