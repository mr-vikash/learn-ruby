def sum(num1,num2)
   puts "The addition is  #{num1.to_f + num2.to_f}" 
end
def sub(num1,num2)
    puts "The substraction is  #{num1.to_f - num2.to_f}" 
end
def multiply(num1,num2)
    puts "The multiplication is  #{num1.to_f * num2.to_f}" 
end
def divide(num1,num2)
    puts "The division is  #{num1.to_f / num2.to_f}" 
end
def mod(num1,num2)
    puts "The modulas is  #{num1.to_f % num2.to_f}" 
end
puts "Simple Calculator"
puts "Enter the first number"
num1 = gets.chomp
puts "Enter Second number"
num2 = gets.chomp 
puts "Enter 1 for addition"
puts "Enter 2 for substraction"
puts "Enter 3 for multiplication Choice"
puts "Enter 4 for  division"
puts "Enter 5 for Modulas"
puts "Enter your Choice"
choice = gets.chomp
if choice == "1"
    sum(num1,num2)
elsif choice == "2"
    sub(num1,num2)
elsif choice == "3"
    multiply(num1,num2)
elsif choice == "4"
    divide(num1,num2)
elsif choice == "5"
    mod(num1,num2)
else 
    "Invalid Input"
end