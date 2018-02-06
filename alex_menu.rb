preps = %w(raw grilled seared baked boiled chopped frozen sauteed steamed melted)
descriptions = %w(greasy creamy tart smokey savory sweet spicy rancid buttery salty)
foods = %w(chicken pork mushrooms carrots beef onions fish soup tofu pasta)

print "Welcome to the Random Menu Generator.\n\n"
print "How many dishes would you like to eat today? "
num = gets.chomp.to_i

while num > 10 || num < 1
  if num > 10
    print "Sorry, 10 is the most I can do. How many under 10 would you like? "
    num = gets.chomp.to_i
  end
  if num < 1
    print "Sorry, must select at least 1 dish: "
    num = gets.chomp.to_i
  end
end

puts "\n=== Random Menu ==="

(1..num).each do |i|
  one = preps.sample
  two = descriptions.sample
  three = foods.sample
  puts "#{i}. #{one} #{two} #{three}"
  preps.delete(one)
  descriptions.delete(two)
  foods.delete(three)
end
