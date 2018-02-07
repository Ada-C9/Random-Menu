# Runs a random menu based on a set of predetermined items

arr1 = ["Creamy", "Spicy", "Mild", "Succulent", "Dairy-free", "Sweet and sour", "Crispy", "Savory", "Hot", "Cold"]
arr2 = ["steamed", "grilled", "marinated", "BBQ-ed", "candied", "par-boiled", "poached", "baked", "vegan", "seared"]
arr3 = ["casserole", "sandwich", "quiche", "tacos", "salmon", "tofu", "brussel sprouts", "cheesecake", "ribs", "tabbouleh"]

#print "How many of the 10 menu items would you like to view? "
#  num = gets.chomp

10.times do |i|
  puts "#{i+1}. #{arr1.sample} #{arr2.sample} #{arr3.sample}"
end

# shuffles arrays so it's a nonrepeating random list.
arr1_rand = arr1.shuffle
arr2_rand = arr2.shuffle
arr3_rand = arr3.shuffle

10.times do |i|
  puts "#{i+1}. #{arr1_rand[i]} #{arr2_rand[i]} #{arr3_rand[i]}"
end
