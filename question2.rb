#2. WAP for students to print their school level according to grade
# e.g -
# if grade is between 1-5 return elementary
# if grade is between 6-8 return middle school
# if grade is between 9-12 return high school
# if grade is between otherwise return college

# Program to return school level based on the grades

def school_level (grade)
    #Corner case
    if(grade<=0)
        return "Invalid Input"
    end

    case grade
    when 1..5 
        return "elementary"
    when 6..8
        return "middle school"
    when 9..12
        return "high school"
    else 
        return "college"
    end
end

puts "School level : " + school_level(0)




