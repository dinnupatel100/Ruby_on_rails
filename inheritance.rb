require 'singleton'

#Super Class
class Animal
  def eat
    puts "I can eat"
  end

  def speak
    puts "I can speak"
  end
end


#Class Dog inheriting Animal Class
class Dog < Animal
  # overide parent class method speak
  def speak
    puts "I can bark"
  end

  def run
    puts "I can run"
  end
end

#Class puppy inherits Dog Class
class Puppy < Dog
  def nature
    puts "I'm cute"
  end
end

dog = Dog.new
puts "\nDog"
dog.speak
dog.run

puppy = Puppy.new
puts "\nPuppy"
puppy.speak
puppy.nature

#Sinleton method -- method will be created for only puppy2 object
puppy2 = Puppy.new
def puppy2.sleep
  puts "sleeping"
end
puts "\nPuppy 2 "
puppy2.speak
puppy2.nature
puppy2.sleep


#-------------
#Singleton Class
class SingleClass
  include Singleton 

  def some_method
    puts "\nI'm in Singleton class"
  end
end

singleobj = SingleClass.instance
singleobj.some_method


# Multiple Inheritance
# multiple inheritance is not possible in ruby through classes
# it is possible through modules

module Indian
  def country
    puts "\n\nIndia"
  end
end

module Employee
  def company
    puts "Josh Software"
  end
end

class IndianEmployee
  include Indian
  include Employee
  def city
    puts "Pune city"
  end
end

dinesh = IndianEmployee.new
dinesh.country
dinesh.company
dinesh.city

#ancestors
print IndianEmployee.ancestors





