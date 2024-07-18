class Student
  attr_accessor :name, :email, :password
  @name
  @email
  @password

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def to_s
    puts "hello #{@name} your email: #{@email} and your password: #{password}"
  end

  def self.identify_yourself(fname)
    puts "Hello you are #{fname}"
  end
end

student = Student.new("Vikash", "vikash@gmail.com", "vikash1234")
 
puts student 
puts "Hello !, #{student.name}"
Student.identify_yourself("Ritik")