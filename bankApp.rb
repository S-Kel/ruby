# CLEAR THE TERMINAL SCREEN
system "clear"

balance = 0
welcome_message = "Welcome to the banking app"
user_question = "What would you like to do? (options: balance)"

# Part 
# Your balance is $0
puts "Your balance is $#{balance}"
puts "...........................................\n\r"

# Part 2
# Welcome to the banking app
# Your balance is $0
puts "#{welcome_message} \nYour balance is $#{balance}"
puts "...........................................\n\r"

# Part 3
# Welcome to the banking app
# What would you like to do? (options: balance)
# *user types balance*
# Your balance is $0
puts "#{welcome_message} \n#{user_question}"
user_input = gets.chomp!

if user_input == "balance"
  system "clear"
  puts "You Entered **** #{user_input} ***"
  puts "Your balance is $#{balance}"
else

  # Part 4
  # Welcome to the banking app
  # What would you like to do? (options: balance)
  # *user types kanye*
  # Invalid selection!
  system "clear"
  puts "You Entered **** #{user_input} ***"
  puts "Invalid Selection"
  puts "#{user_question}"  
end

password = "Kel"
print "Please enter your Password before you proceed > "
user_input = gets.chomp!

while user_input == password
  puts "Something"
  user_input = gets.chomp!
end