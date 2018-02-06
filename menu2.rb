

firstadj = []
secondadj = []
fooditem = []
usedwords = []

puts "How many food items would you like to enter?"
numberofitems = gets.chomp.to_i

# Get user input for foods and add to 3 arrays
numberofitems.times do
  puts "Please enter an adjective."
  firstobject = gets.chomp
  firstadj.push(firstobject)
end

numberofitems.times do
  puts "Please enter another adjective."
  secondobject = gets.chomp
  secondadj.push(secondobject)
end

numberofitems.times do
  puts "Please enter a food."
  thirdobject = gets.chomp
  fooditem.push(thirdobject)
end

firstadj = firstadj.shuffle
secondadj = secondadj.shuffle
fooditem = fooditem.shuffle


puts "Great. Here is your menu:"

# Print strings of 3 random words from each array
# Does not allow duplicates
numberofitems.times do |number|
  print "#{number + 1}. "
  firstword = firstadj.shift
  print "#{firstword.capitalize} "

  secondword = secondadj.shift
  print "#{secondword.capitalize} "

  thirdword = fooditem.shift
  print "#{thirdword.capitalize}\n"
end
