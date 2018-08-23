system "clear"
# Constant
user_age = 0

print "Please enter your age > "

user_age = gets.chomp! 

if user_age.to_i < 18
  puts " Sorry your are too young!" 
end
puts "Challenge 01 .............................."
puts " You are #{user_age} old"


puts "Challenge 02 .............................."
print "Please enter your age > "
age = gets.chomp! 

# Conditional test
if age.to_i >= 18 
  puts " You are #{age} old"    
elsif age.to_i == 16
    puts " Sweet sixteen!"
else
    puts " Sorry your are too young!"
  #end
end 




