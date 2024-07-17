users = [
    {username: "ankit", password: "ankit1234"},
    {username: "ankur", password: "ankur1234"},
    {username: "vikash", password: "vikash1234"},
    {username: "nidhi", password: "nidhi1234"},
    {username: "diksha", password: "diksha1234"},
]
puts "Welcome to my authenticator app!"
32.times {print "="}
puts
attempts = 1
while attempts < 4
    print "Enter Your Username: "
    username = gets.chomp
    print "Enter Your Password: "
    password = gets.chomp
    users.each do |user|
        if user[:username] == username.downcase && user[:password] == password.downcase
            puts "Welcome #{user}"
            break
        else 
            puts "Invalid credentials"
        end
    end
    puts "press n to quit and anyother key to continue..."
    stop = gets.chomp
    break if stop == "n"
    attempts += 1
end
