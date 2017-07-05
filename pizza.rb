def size()
  size = ["small", "medium", "large" ].sample
end
def crust()
  crust = ["thin", "pan", "brooklyn"].sample
end
def cheese()
  cheese = ["no cheese", "light cheese", "cheese", "extra cheese"].sample
end
def sauce()
  sauce = ["regular sauce", "marinara sauce", "BBQ sauce", "alfredo sauce"].sample
end
def meat()
  meat = ["pepperoni", "bacon", "ham", "no meat"].sample
end
def veggies()
  veggies = ["pineapple", "mushrooms", "peppers", "no veggies"].sample
end
def time()
  time = ["15-20 min", "21-30 min", "31-45 min", "46-60 min"].sample
end
def del()
  delivery = ["Yes", "No"].sample
end
y_del = del
p "Is this for delivery?"
  puts y_del
p "How many pizzas would you like?"
  x = gets.chomp.to_i
  puts
count = 1
cost = 0
x.times do
  pizza_size = size
  p "Pizza #{count}"
    count +=1
  puts pizza_size
  puts crust
  puts cheese
  puts sauce
  puts meat
  puts veggies
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
if y_del == "Yes"
  puts "The delivery charge is $3.00."
  tip_charge = time
  del_charge = 3
  puts tip_charge
    elsif y_del == "No"
      tip_charge = 0
      del_charge = 0
      puts "There is no delivery charge."
end
      if tip_charge == "15-20 min"
        tip_charge = 7
        puts "Your tip is $#{tip_charge}."
      elsif tip_charge == "21-30 min"
        tip_charge = 5
        puts "Your tip is $#{tip_charge}."
      elsif tip_charge == "31-45 min"
        tip_charge = 3
        puts "Your tip is $#{tip_charge}."
      elsif tip_charge == "46-60 min"
        tip_charge = 0
        puts "Your tip is $#{tip_charge}."
      end
total_charge = "#{cost * 1.06 + tip_charge + del_charge}"
puts "Total cost is $#{'%.2f' %total_charge}"
puts
