#1. Write a program to display number is prime or not

#Program to check the given number is prime or not

#function to check number is prime or not
def check_prime(number)
  
    #Condition for values less than 1
    if(number<1)
        puts "Enter number greater than 0"
        return
    end
    
    # Corner case for value 1
    if(number==1)
        puts "1 is not a prime number nor a composite number"
        return
    end


    # loop to check prime number
    upper_limit = number/2
    for i in 2..upper_limit do 
        if number%i==0
            puts "#{number} is not a prime number"
            return
        end
    end
    puts "#{number} is a prime number"
end

#calling function with number as argument
check_prime(0)

