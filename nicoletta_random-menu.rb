adjectives = ["sweet", "sour", "icky", "yummy", "salty", "crunchy", "gross", "pickled", "cold", "spicy"]
methods = ["fry", "roasted", "baked", "saute", "frozen", "smoked", "steamed", "toasted", "melted", "burned"]
foods = ["eggplant", "califlower", "squash", "tofu", "potato", "apples", "ice-cream", "chocolate", "beans", "mango"]

10.times do |item|
  # pick random element from array and remove it
  adjective = adjectives.delete_at(rand(adjectives.length))
  method = methods.delete_at(rand(methods.length))
  food = foods.delete_at(rand(foods.length))

  puts "#{item + 1}. #{adjective} #{method} #{food}"

end
