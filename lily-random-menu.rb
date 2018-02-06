# Lily's random menu generator

# create 3 arrays of potential food list words (10 per list)
adjective = ["Spicy", "Tangy", "Tart", "Upside-down", "Salty", "Lime", "Nutty", "Sweet", "Aromatic", "Heavenly",]
style = ["sauteed", "breaded", "battered", "burnt", "toasted", "curried", "roasted", "shredded", "blistered", "poached"]
item = ["lamb chops", "pork shank", "ribs", "kale", "chicken", "turnips", "beets", "salmon", "yams", "beef"]

# get input from user regarding number of items - must be from 1 to 10 or else will ask for number again
puts "Hello, how many menu options would you like to have today?"

answer = 0
until answer <= 10 && answer > 0
  print "Please choose a number from 1 to 10: "
  answer = gets.chomp.to_i
end

# once parameters are satisfied, output options
puts ""
puts "Fantastic! Here is your menu:"

# add 1 to answer value because until loop will only run up to and not including answer value.
i = 1
until i == answer + 1

# delete contents from arrays as they are used so there are no duplicates in output
  puts "#{i}. #{adjective.delete(adjective.sample)}, #{style.delete(style.sample)} #{item.delete(item.sample)}"
  i += 1
end

# stylized to have an extra space at the end
puts ""
