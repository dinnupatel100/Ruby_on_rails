# 4. Regex for mobile number, email address, name, gender(M / F) and amount

text = "My number is 9284282726 my age is 24 amount Rs.6789 email - dineshpatel@gmail.com gender - M"

puts "\n1. Print Number\n2. Print Email\n3.Print Amount\n4.Print Gender"
print "\nEnter the number : "
number = gets.chomp.to_i

case number
when 1
  number = text.match(/\d{10}/)
  puts number  
when 2       
  email = text.match(/\w+@\w+.\w+/)
  puts email 
when 3     
  amount = text.match(/Rs.\d+/) 
  puts amount
when 4
  gender = text.match(/[MFmf]/)
  puts gender
end





