# Banking App

# Clear the output terminal
system 'clear'

# Store user password
user = ['kel', 'Kel']

# Variables
ballance     = 0.0
exit_flag    = false
msg          = ''
user_options = "What would you like to do? (options: balance, deposit, withdrawal, quit)"

# Authenticate a user before they can access their accounts options
loop do 
  print "Please Enter Your Password before You Proceed: "

  user_input = gets.chomp! 

  if user_input == user[0]
    system 'clear'
    print "#{''.ljust(27)} WELCOME, #{user[0].upcase}\n#{user_options}\n:> "

    # Read in user options and proceed accordingly
    user_input = gets.chomp! 

    while user_input != 'q'
      #user_input = gets.chomp! 

      case user_input
      when 'ballance'
        msg ="WELCOME, #{user[0].upcase}#{''.ljust(39)}YOUR BALANCE IS $#{ballance}\n#{user_options}\n:> "
      when 'deposit'
        print "How much would you like to deposit? :> "
        amount = gets.chomp.to_f.abs     
        ballance += amount
        msg = "YOU ADDED $#{amount}#{''.ljust(36)}YOUR BALANCE IS $#{ballance}\n#{user_options}\n: "

      when 'withdrawal'
        print "How much would you like to withdraw? > "
        amount = gets.chomp.to_f.abs   
        if amount <= ballance
          ballance -= amount
          msg = "YOU'VE WITHDRAWN $#{amount}#{''.ljust(30)}YOUR BALANCE IS $#{ballance}\n#{user_options}\n:> "
        else
          msg = "#{''.ljust(10)}You cannot withdraw more than your current ballance. \n#{''.ljust(20)}Please try another amount.\n#{''.ljust(5)}#{user_options}\n:>  "
        end
      else
          msg = "INVALID SELECTION!\n#{user_options}\n:> "    
          if ['q','quit'].include?(user_input.downcase)  
            return
          end
      end
      system 'clear'
      print msg.upcase
      user_input = gets.chomp! 
    end   
  else
      print "You have entered a wrong password, please try again or enter 'q' to quit: "
  end

  #exit_flag = true
  break if ['q','quit'].include?(gets.downcase.chomp)
end
#
