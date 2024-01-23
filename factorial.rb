#Write a program to calculate the factorial of a given number.

# factorial method return the factorial of the number
def factorial( number )
  factorial = 1
  if number >= 0
    (2..number).each { |num| factorial *= num } 
    factorial
  else
    "Undefined"
  end
end

print "Enter the number : "
number = gets.chomp.to_i
puts "Factorial of #{number} is #{factorial(number)}"