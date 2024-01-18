#2. WAP for students to print their school level according to grade
# e.g -
# if grade is between 1-5 return elementary
# if grade is between 6-8 return middle school
# if grade is between 9-12 return high school
# if grade is between otherwise return college

# Program to return school level based on the grades

def school_level (grade)
    
  case grade
  when 1..5 
    return "elementary"
  when 6..8
    return "middle school"
  when 9..12
    return "high school"
  when 13..25 
    return "college"
  else
    return "Invalid Input"
  end

end


print "Enter the grade : "
grade = gets.chomp.to_i
puts "School level : " + school_level(grade)




