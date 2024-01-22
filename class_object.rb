
class Student

  #class variable 
  @@no_of_students = 0
  
  #instance variable
  @first_name
  @last_name
  @roll_no
  @marks

  #initializer 
  def initialize(first_name=nil, last_name=nil, roll_no=nil,marks=nil)
    @first_name = first_name
    @last_name = last_name
    @roll_no = roll_no
    @marks = marks
    @@no_of_students += 1
  end

  #getter 
  def first_name
    @first_name
  end

  #setters
  def first_name=(first_name)
    @first_name = first_name
  end

  #getters and setters
  attr_accessor :last_name , :roll_no, :marks

  #class method
  def self.total_students
    puts "\nTotal Students : #{@@no_of_students}"
  end

  #instance method
  def sports (*args)
    print "#{@first_name} plays : "
    args.each {|sport| print sport+","}
    details
  end

  #private method
  private
  def details
    puts "\n\nPersonal Details : \nName : #{@first_name} #{@last_name}, Roll no : #{@roll_no}, Marks : #{@marks}"
  end


end


dinesh = Student.new("Dinesh","Patel",21,87)
rakesh = Student.new("Rakesh","Sharma",16,98)
dinesh.last_name = "Yadav"

dinesh.sports("Cricket","Football")
Student.total_students