$users = [
    { username: "joey", password: "ayy" },
]

def tryLogin()
    puts "Enter username: "
    userName = gets.chomp.downcase

    puts "Enter password: "
    password = gets.chomp

    return $users.select { |user| (user[:username] == userName) && (user[:password] == password) }
end

numOfTries = 4

for i in 1..numOfTries do
    currUser = tryLogin()
    if !currUser.empty?
        print currUser
        break
    end
    print "\nInvalid creds, you have #{ numOfTries - i } more #{ (numOfTries - i == 1) ? "try" : "tries" }\n\n"
end
