adjectives = ["hot", "cold", "rotten", "smelly", "soft", "creamy", "delicious", "yummy", "sour", "bitter"]
cooking_styles = ["panfried", "grilled", "deepfried", "baked", "sauted", "stirfried", "seasoned", "shallowed", "boiled", "roasted"]
foods = ["potato", "salad", "muffins", "chips", "chicken", "noodles", "taco", "rice", "quinoa", "fruits"]


10.times do |n|
#puts "#{n + 1}. #{adjectives.shuffle[0]} #{cooking_styles.shuffle[0]} #{foods.shuffle[0]}"
#end
a = rand(0..9)
b = rand(0..9)
c = rand(0..9)
puts "#{n+1}. #{adjectives[a]} #{cooking_styles[b]} #{foods[c]}"
end
