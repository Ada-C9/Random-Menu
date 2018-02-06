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
  puts ""
end

# must have 10 or fewer items; if parameters are satisfied output options
puts "Fantastic! Here is your menu:"
tally = answer.to_i + 1
i = 1
until i == tally

#delete contents from arrays as they are used so there are no duplicates in output
puts "#{i}. #{adjective.delete(adjective.sample)}, #{style.delete(style.sample)} #{item.delete(item.sample)}"
  i += 1
end
  puts ""
