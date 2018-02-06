method_array = []
taste_array = []
food_array = []
message_array = []
number_of_item = 11

def create_arrays(array)
  item = gets.chomp.downcase
  until item == "quit"
    array << item
    puts "Please enter another item:"
    item = gets.chomp.downcase
  end
end


puts "Welcome to Random Menu! Let's create your own food database now."
puts "Please enter some cooking methods. Enter 'quit' when you are done."
create_arrays(method_array)
puts "Please enter some descriptors for food. Enter 'quit' when you are done."
create_arrays(taste_array)
puts "Please enter some of your favorite food. Enter 'quit' when you are done."
create_arrays(food_array)

array_sizes = [method_array.size, taste_array.size, food_array.size]
max_number_of_item = array_sizes.min

puts "How many items do you want to check out? Pick a number between 0 and #{max_number_of_item}."
number_of_item = gets.chomp.to_i
while number_of_item > max_number_of_item
  puts "Please enter a number between 0 and #{max_number_of_item}."
  number_of_item = gets.chomp.to_i
end

def random_number(max)
  r = Random.new
  index = r.rand(0...max)
end

def delete_current_item(array, index)
  array.delete_at(index)
end

number_of_item.times { |i|
  index_method = random_number(number_of_item - i)
  index_taste = random_number(number_of_item - i)
  index_food = random_number (number_of_item - i)
  message_array[i] = "#{ i + 1 }. " + method_array[index_method] + " " + taste_array[index_taste] + " " + food_array[index_food]
  delete_current_item(method_array, index_method)
  delete_current_item(taste_array, index_taste)
  delete_current_item(food_array, index_food)
}

puts "Here is your list:"
puts message_array
