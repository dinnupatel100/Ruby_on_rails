# Q. Design a program to calculate the sum of digits of a given integer

# 'digit_sum' method will return sum of digits
def digits_sum(number)
  sum = 0 
  while number > 0
    sum += number%10
    number /= 10
  end
  sum
end

print "Enter the number : "
number = gets.chomp.to_i
puts "Sum of #{number} : #{digits_sum(number)}"