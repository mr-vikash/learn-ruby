addresses = [
    {"district" => "Lucknow", "code" => 32},
    {"district" => "Kanpur", "code" => 78},
    {"district" => "Unnao", "code" => 30},
    {"district" => "Hardoi", "code" => 35},
    {"district" => "Barabanki", "code" => 31}
]

def get_city_name(addresses , code)
  addresses.each do |address|
    if address["code"] == code
      return address["district"]
    end
  end
  "Invalid code"
end

def get_city_code(address , city)
end

puts "Wecome find your city using city code or Find your city code using city name"
60.times {print "-"}
puts
puts "Enter 1 to find city name using city code"
puts "Enter 2 to find city code using city name"
find_city = gets.chomp.to_i
if find_city == 1
  i = 0
  addresses.each do |address|
    address.each { |key, value| print value}
  i += 1
  end
elsif find_city == 2
  addresses.each { |city,code| puts code }
  puts "Enter city name"
end

loop do
  puts 
  puts "Enter city code" 
  code = gets.chomp.to_i
  city_name = get_city_name(addresses , code)
  if city_name != "Invalid code"
    puts "Your city is #{city_name}"
  else
    puts "Invalid Input"
  end
  puts "press x to exit and any other key to continue.."
  stop = gets.chomp.downcase
  break if stop == "x"
end