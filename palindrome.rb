# Implement a program to check if a given string is a palindrome or not.

#check_palindrome method check the given string is palindrome or not
def check_palindrome( word )
  length = word.length
  ( 0...length/2 ).each do |index|
    if word[ index ] != word[ length-index-1 ]
      puts "#{word} is not a palindrome"
      return
    end
  end
  puts "#{word} is a palindrome"
end

puts "Enter the word to check palindrome : "
word = gets.chomp.downcase
check_palindrome(word)