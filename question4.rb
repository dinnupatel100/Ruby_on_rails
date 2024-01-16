# 4. Regex for mobile number, email address, name, gender(M / F) and amount

text = "My number is 9284282726 my age is 24 amount Rs.6789 email - dineshpatel@gmail.com gender - M"
number = text.match(/\d{10}/)         # to find mobile number
amount = text.match(/Rs.\d+/)         # to find amount
email = text.match(/\w+@\w+.\w+/)     # to find email
gender = text.match(/[MFmf]/)         # to find gender

puts number
puts amount
puts email
puts gender
