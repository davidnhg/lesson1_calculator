# Inputs:
# => 1.  A valid number from user.
# => 2.  Another valid number from user.  Can't be zero if division.
# => 3.  Operator:  +, 1, * or / from user
#
# Output: Num1 {+, -, *, /} Num2

def say(setence)
  puts setence
end

# Get the first number
say "Enter first number:"
num1 = gets.chomp

if num1 !~ /\b\d+\b/
  say "#{num1} is not a valid number.  Exiting ..."
  exit
end

# Get the second number
say "Enter second number:"
num2 = gets.chomp

if num2 !~ /\b\d+\b/
  say "#{num2} is not a valid number.  Exiting ..."
  exit
end

say "Choose one:  1) Add"
say "             2) Subtract"
say "             3) Multiply"
say "             4) Divide"

operator = gets.chomp

# Validation
if operator == "4" && num2.to_f  == 0
  say "Division by zero is not permitted.  Exiting ..."
  exit
end

# Now calculator the result
if operator == "1"
  result = num1.to_f + num2.to_f
elsif operator == "2"
  result = num1.to_f - num2.to_f
elsif operator == "3"
  result = num1.to_f * num2.to_f 
elsif operator == "4"
  result = num1.to_f / num2.to_f
end

operators = {'1' => '+', '2' => '-', '3' => '*', '4' => '/'}

puts "------Result---------"
puts "#{num1} #{operators[operator]} #{num2} = #{result}"