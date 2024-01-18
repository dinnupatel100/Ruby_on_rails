#1. Write a program to display number is prime or not


#function to check number is prime or not
def check_prime(number)
  
  if(number<1)
    puts "Enter number greater than 0"
  elsif(number==1)
    puts "1 is not a prime number nor a composite number"
  else
    upper_limit = number/2
    (2..upper_limit).each do |i|
        if number%i==0
        puts "#{number} is not a prime number"
        return
        end
    end
    puts "#{number} is a prime number"
  end

end

#calling function with number as argument
print "Enter the number : "
number = gets.chomp.to_i
check_prime(number)

