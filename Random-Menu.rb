descriptor_array = ["soft","mushy","stale","sugary","creamy","cheesy","fluffy","sour","dry","fizzy"]
cooking_styles = ["greasy","spicy","smoked","baked","roasted","steamed","raw","over-done","rare","burnt"]
foods = ["hamburger","spaghetti","baklava","pork","squid","eggrolls","watermelon","pears","cherries","jello"]



for i in 0..9

  idx = rand(0..9)
  descriptor = descriptor_array[idx]
  cook_des = cooking_styles[idx]
  food_des = foods[idx]

  puts (i + 1).to_s  + "." + " " + descriptor + " " + cook_des + " " + food_des
end
