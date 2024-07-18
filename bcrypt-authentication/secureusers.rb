require_relative 'secureauthentication'  #This will use when required file and module in same directory

users = [
    {username: "ankit", password: "ankit1234"},
    {username: "ankur", password: "ankur1234"},
    {username: "vikash", password: "vikash1234"},
    {username: "nidhi", password: "nidhi1234"},
    {username: "diksha", password: "diksha1234"},
]

secure_users = Crud.create_secure_user(users)
puts secure_users