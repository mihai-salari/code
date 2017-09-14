my_name = 'Zed A. Shaw'
my_age = 35
my_height = 74 # inches
my_weight = 180 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

puts "Let's talk about #{my_name}."
puts "He's #{my_height} inches tall."
puts "He's #{my_weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{my_eyes} eyes and #{my_hair} hair."
puts "His teeth are usually #{my_teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{my_age}, #{my_height}, and #{my_weight} I get #{my_age + my_height + my_weight}."

# 1 kg = 2.2 lbs
# 1 inch = 2.54 cm

my_height_in_cm = my_height * 2.54
puts "He's #{my_height_in_cm} centimeters tall."

my_weight_in_kg = my_weight / 2.2
puts "He's #{my_weight_in_kg} kilograms heavy."

# Special using c style printf
printf "He's %.1f kilograms heavy.", my_weight_in_kg