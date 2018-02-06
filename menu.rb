# User inputs how many menu items they would like
puts "Hi there, how many menu items would you like to see? (1-10)"
n = gets.chomp.to_i

# User gets error message if they do not enter number w/in range 1-10. Prompted to enter valid number.
while n > 10 || n < 1
  puts "Enter valid number (1-10): "
  n = gets.chomp.to_i
end

# adjectives
adjectives = %W{Mushy Crunchy Soft Creamy Spicy Dry Bubbly Delicious Fishy Salty Caramelized}

# cooking styles
cooking_styles = %W{steamed seared fried baked smoked charred boiled Mexican Chinese Thai}

# food names
foods = %W{sausage eggroll taco burrito chicken tuna tofu beans pasta
  egg turkey burger sushi}

# 10 Menu items printed with random adjective, cooking_style, and food name. Items printed will not be repeated.
  (1..n).each do |num, adjective, cooking_style, food|
    puts "#{num}. #{adjectives.delete(adjectives.sample)} #{cooking_styles.delete(cooking_styles.sample)} #{foods.delete(foods.sample)}"
  end
