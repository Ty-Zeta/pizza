def size
  size = ["small", "medium", "large", "x-large"].sample
end
def crust
  crust = ["thin", "pan", "brooklyn"].sample
end
def cheese
  cheese = ["no cheese", "light cheese", "cheese", "extra cheest", "double cheest"].sample
end
def sauce
  sauce = ["regular sause", "marinara sause", "BBQ sause", "alfredo sause"].sample
end
def meat
  meat = ["pepperoni","double pepperoni", "bacon", "ham", "no meat"].sample
end
def veggies
  veggies = ["pineapple", "mushrooms", "peppers", "no veggies"].sample
end
p "How many pizzas would you like?"
  x = gets.chomp.to_i

x.times do
  puts size
  puts crust
  puts cheese
  puts sauce
  puts meat
  puts veggies
  puts
end
