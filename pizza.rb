def size
  size = ["small", "medium", "large" ].sample

end
def crust
  crust = ["thin", "pan", "brooklyn"].sample
end
def cheese
  cheese = ["no cheese", "light cheese", "cheese", "extra cheese"].sample
end
def sauce
  sauce = ["regular sause", "marinara sause", "BBQ sause", "alfredo sause"].sample
end
def meat
  meat = ["pepperoni", "bacon", "ham", "no meat"].sample
end
def veggies
  veggies = ["pineapple", "mushrooms", "peppers", "no veggies"].sample
end
p "How many pizzas would you like?"
  x = gets.chomp.to_i
count = 1
cost = 0
x.times do
  pizza_size = size
  p "Pizza #{count}"
    count +=1
  # puts "size is #{pizza_size}"
  #   if pizza_size == "small"
  #     cost += 3
  #     puts "Total cost is #{cost}"
  #   elsif pizza_size == "medium"
  #     cost += 5
  #     puts "Total cost is #{cost}"
  #   elsif pizza_size == "large"
  #     cost += 7
  #     puts "Total cost is #{cost}"
  #end
  puts crust
  puts cheese
  puts sauce
  puts meat
  puts veggies
  puts "size is #{pizza_size}"
    if pizza_size == "small"
      cost += 3
      puts "Total cost is $#{cost}"
    elsif pizza_size == "medium"
      cost += 5
      puts "Total cost is $#{cost}"
    elsif pizza_size == "large"
      cost += 7
      puts "Total cost is $#{cost}"
    end
  puts
end

# def price(size)
#   cost = 0
#   # p "size is #{size}"
#   # p "cost is #{cost}"
#   if size == "small"
#     cost = cost + 3
#   elsif size == "medium"
#     cost = cost + 5
#   else size == "large"
#     cost = cost + 7
#   end
#   cost
# end

  #puts price(size)
  # p "size is #{size}"
  # p "cost is #{cost}"
#   puts "size is #{size}"
#   if size == "small"
#     cost = cost + 3
#   elsif size == "medium"
#     cost = cost + 5
#   else size == "large"
#     cost = cost + 7
#   end
# end
# puts cost
#puts "Total cost is $#{'%.2f' %(x * 10.06)}"
#puts "Total cost is $#{cost}."
