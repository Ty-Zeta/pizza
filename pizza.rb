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

# sets of arrays are set with .sample to have one be randomly choosen for function to call upon later

y_del = del
# variable is set as the randomly choosen element so whenever its called, I'll get the same element instead of a differently choosen one each time

p "Is this for delivery?"
  puts y_del
 # delievery decides whether or not certain charges will occur later

p "How many pizzas would you like?"
  x = gets.chomp.to_i
# user gives how many pizzas they want and that value is turned into integer

  puts
count = 1
cost = 0
# counter is displayed so that each corresponding pizza will display what order its in as well as the total cost

x.times do
# user given number is how many times the function will run

  pizza_size = size
# like delievery, size is given to another variable so I can keep the same size of each pizza and its price later one

  p "Pizza #{count}"
    count +=1
  puts pizza_size
  puts crust
  puts cheese
  puts sauce
  puts meat
  puts veggies
# each of the randomly selected toppings and sizes are shown to viewer

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
# if statement determines the cost of each pizza by its size by saying if it's this size, add this value to the cost counter
# if it's not this size, move onto the next elsif statement until it comes up true
# at the end of each cycle, the cost of each pizza is added onto the cost counter and starts again until the number user gave is complete

if y_del == "Yes"
  puts "The delivery charge is $3.00."
# if yes was choosen from array, printed statement lets user know there is a $3 charge

  tip_charge = time
# variable is set to randomly choosen time slot

  del_charge = 3
# value is given to variable to have $3 charge added to final formula

  puts tip_charge
    elsif y_del == "No"
      tip_charge = 0
      del_charge = 0
      puts "There is no delivery charge."
end
# if delievery is set as no, then all the values for the tip and delievery fee is set as 0

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
# if statement sets conditions for how fast the delievery is done and how good of a fee is set
# faster service means better tip, printed statement then states how much the tip is

total_charge = "#{cost * 1.06 + tip_charge + del_charge}"
# variable total charge is equal to the total cost of each size of the pizzas added together with counter cost
# then multiplied by 1.06 to represent WV state tax, plus the tip and delievery charge that was determined by the randomly selected answer

puts "Total cost is $#{'%.2f' %total_charge}"
# User is given total cost that is then rounded down to the last two decimal places with a modulous of itself

puts
