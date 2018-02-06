adjectives = [
  "hot", "cold", "soft", "chunky", "weird", "fresh", "strange", "blue", "spicy",
  "old"
]

cooking_styles = [
  "steamed", "fried", "toasted", "buried", "wood-fired", "pressure-cooked",
  "sauted", "smoked", "chopped", "diced"
]

foods = [
  "ice-cream","pizza", "pasta", "clams", "tofu", "sushi", "watermellon",
  "veggie-burgers", "yogurt", "salmon"
]
# Original program -
# 10.times do |num|
#   random = rand(foods.length)
#
#   puts "#{num + 1}. #{adjectives[random]} #{cooking_styles[random]} #{foods[random]}"
# end

10.times do |num|
  random = rand(foods.length)

  # chooses random words
  adjective = adjectives[random]
  cooking_style = cooking_styles[random]
  food = foods[random]

  puts "#{num + 1}. #{adjective} #{cooking_style} #{food}"

  # removes terms/elements from each array as they are used
  adjectives.delete(adjective)
  cooking_styles.delete(cooking_style)
  foods.delete(food)
end
