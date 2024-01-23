# Create a program to count the number of vowels and consonants in a given string.

# method 'count_vowels_consonants' will return vowel & consonants count
def count_vowels_consonants( phrase )
  vowel_count = 0
  consonants_count = 0
  ( 0...phrase.length ).each do |i|
    if phrase[i].match(/[aeiou]/)
      vowel_count += 1
    elsif phrase[i].match(/[a-z]/)
      consonants_count += 1
    end
  end
  "Vowels : #{vowel_count}, Consonants : #{consonants_count}"
end

print "Enter the phrase : "
phrase = gets.chomp.downcase
puts count_vowels_consonants(phrase)