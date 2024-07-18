require 'bcrypt'

users = [
    {username: "ankit", password: "ankit1234"},
    {username: "ankur", password: "ankur1234"},
    {username: "vikash", password: "vikash1234"},
    {username: "nidhi", password: "nidhi1234"},
    {username: "diksha", password: "diksha1234"},
]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def create_secure_user(list_of_user)
  list_of_user.each do |user|
    user[:password] = create_hash_digest(user[:password])
  end
  list_of_user 
end

secure_users = create_secure_user(users)

def authenticate_user(password,secure_users, username)
    secure_users.each do |user|
        if user[:password] == password && user[:username] == username
            return "User Logged in"
        end
    end
    "Invalid credentials"
end

authentication = authenticate_user("ankit1234",secure_users, "ankit")
puts authentication