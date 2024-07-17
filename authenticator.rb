users = [
    {username: "ankit", password: "ankit1234"},
    {username: "ankur", password: "ankur1234"},
    {username: "vikash", password: "vikash1234"},
    {username: "nidhi", password: "nidhi1234"},
    {username: "diksha", password: "diksha1234"},
]

def authenticator(users,username,password)
    users.each do |user|
        if user[:username] == username && user[:password] == password
            return user
        end
    end
    "Invalid credentials"
end
puts "Welcome to my authenticator app!"
32.times {print "="}
puts
attempts = 1
while attempts < 4
    print "Enter Your Username: "
    username = gets.chomp
    print "Enter Your Password: "
    password = gets.chomp
    user_auth = authenticator(users,username,password)
    if user_auth == "Invalid credentials"
        puts user_auth
    else
        puts "Welcome #{user_auth}"
        puts "Thank you for visiting my portal #{user_auth[:username].capitalize}"
    end
    puts "press n to quit and anyother key to continue..."
    stop = gets.chomp
    break if stop == "n"
    attempts += 1
end
puts "You exceeded the limit..."
