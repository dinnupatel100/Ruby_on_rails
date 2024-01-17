# Write a program to find IP address class

# Program to take IP address as an input and print the class of IP it belongs to

# function to return the class of IP
def get_class(ip)
    octets = ip.split('.')         #splits all the octets and store in the array
    octet1 = octets[0].to_i        # convert string into int

    case octet1
    when 0..127   
        return "Class A"
    when 128..191 
        return "Class B"
    when 192..223 
        return "Class C"
    when 223..239 
        return "Class D"
    when 240..255 
        return "Class E"
    else 
        return "Invalid IP address"
    end
end

print "Enter the IP Address : "              
ip = gets.chomp                                              #getting IP address  from the user
puts "IP address belongs to : #{get_class(ip)}" 

