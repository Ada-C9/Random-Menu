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

# Optional Enhancement 1
# 10.times do |num|
#   random = rand(foods.length)
#
#   # chooses random words
#   adjective = adjectives[random]
#   cooking_style = cooking_styles[random]
#   food = foods[random]
#
#   puts "#{num + 1}. #{adjective} #{cooking_style} #{food}"
#
#   # removes terms/elements from each array as they are used
#   adjectives.delete(adjective)
#   cooking_styles.delete(cooking_style)
#   foods.delete(food)
# end

# Optional Enhancement 2
class String
  def numeric?
    Float(self) != nil rescue false
  end
end

print "Please choose how many menu items you would like. You may choose 0 to 10 items: "
input = gets.chomp

# TODO: Put this block of code into the while loop below to prevent accidental
# non-numaric input
until input.numeric?
  print "#{input} is not a number. Please enter a number: "
  input = gets.chomp
end
input = input.to_i

while input > 10
  print "#{input} is more than the items availible. Please enter a number 0 to 10: "
  input = gets.chomp.to_i
end

input.times do |num|
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
