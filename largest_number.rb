# Develop a program to find the largest element in an array.

# method 'largest_element' will return the largest element
def largest_element(numbers)
  largest = numbers[0]
  (1...numbers.size).each do |i|
    if numbers[i] > largest
      largest = numbers[i]
    end
  end
  largest
end

def initialize_array(numbers, size)
  (0...size).each do |index|
    numbers[index] = gets.chomp.to_i
  end
end

print "Enter the size of the array : "
size = gets.chomp.to_i
numbers = Array.new(size)
initialize_array(numbers, size)
puts "Largest element : #{largest_element(numbers)}"