class Student
  attr_accessor :first_name, :email, :password  #working as bother getters and setters
  @first_name
  @email
  @password

  def initialize(first_name, email, password)
    @first_name = first_name
    @email = email
    @password = password
  end

  def first_name(name)  #This method here working as a setter method
    @first_name = name
  end

    def first_name= (name)  #This method here working as a setter method also you meed to write like this first_name=
        @first_name = name
    end
  def to_s
    puts "hello #{@first_name} your email: #{@email} and your password: #{@password}"
  end

  def self.identify_yourself(first_name)
    puts "Hello you are #{first_name}"
  end
end

student = Student.new("Vikash", "vikash@gmail.com", "vikash1234")
 
student.first_name("Ankur")

student.first_name = "Ankit"

puts student