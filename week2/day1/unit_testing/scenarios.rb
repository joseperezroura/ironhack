require_relative("lib/string_calculator")


the_calculator = StringCalculator.new


p the_calculator.add("7,7") == 14
p the_calculator.add("8,4") == 12

p the_calculator.add("6") == 6
p the_calculator.add("3") == 3

p the_calculator.add("") == 0

puts "==================================="

# BONUS:
p the_calculator.add("7$7") == 14

puts "==================================="

p the_calculator.add("8$4") == 12

puts "==================================="

p the_calculator.add("8$4") == 12

puts "==================================="

p the_calculator.add("7,7,1,2") == 17

puts "==================================="

p the_calculator.add("7$7$1$2") == 17

puts "==================================="

p the_calculator.add("7$7,1,2") == 17