system "clear"

# Store password 
PASSWORD = "kel"

# Global Variable
balance = 0
welcome_message = "Welcome to the banking app"
user_question = "What would you like to do? (options: balance, deposit, withdrawal)"

# Display balance
puts "Your balance is $#{balance}"

# Read password from user input
print "Please Enter your Password > "
password = gets.chomp! 

if password == PASSWORD 
  # Clear the terminal
  system "clear"   

  # Welcome to the banking app
  puts "#{welcome_message} \nYour balance is $#{balance}"
  puts "#{welcome_message} \n#{user_question}"
  get_user_options = gets.chomp! 

  while get_user_options!='q'
    # Clear the terminal
    system "clear"   
    # puts "Iam hereee...."
    # get_user_options = nil

    
    if get_user_options == "balance"
      puts "Your balance is $#{balance}"
      print "#{user_question} > "

    elsif get_user_options == "deposit"
      #1. get user input ASK: how much would you like to deposit?
      #2. Update the balance
      #3. Display 
      print "How much would you like to deposit? > "
      deposited_amount = gets.chomp!      
      balance += deposited_amount.to_f
      puts "Your Total balance is $#{balance}"
      print "#{user_question} > "
      
    elsif get_user_options == "withdrawal"
      #1. Get user input
      #2. CHECK: Make sure they can't withdraw more than their total balance
      print "How much would you like to withdraw? > "
      amount_to_withdraw = gets.chomp!   

      temp_balance = balance - amount_to_withdraw.to_f
      if temp_balance < 0.0
        puts "Insufficient fund!"
        print "#{user_question} > "
      else
        balance = temp_balance
        puts "Your Total balance is $#{balance}"
        print "#{user_question} > "
      end      
    else
      # Invalid selection!
      #system "clear"
      puts ".........................."
      puts "Invalid Selection"
      puts "#{user_question}"  
    end 
    # What would you like to do
    #puts "#{welcome_message} \n#{user_question}"
    get_user_options = gets.chomp! 
  end
else
  puts "You have entered an invalid passsword"
  puts "Exiting..."
end