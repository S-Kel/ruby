system "clear"
# Constant
DECADE             = 10
MY_AGE             = 35
DAYS_PER_YEAR      = 365
HOURS_PER_DAY      = 24
MINUTES_PER_HOUR   = 60 
SECONDS_PER_MINUTE = 60 

puts "PART 1 ......................................."
# How many hours are in a year.
total_hours_per_year = DAYS_PER_YEAR * HOURS_PER_DAY
puts "  01 There are #{total_hours_per_year} Hours in a Year"

# How many minutes are in a decade?
total_minutes_per_decade = total_hours_per_year * MINUTES_PER_HOUR * DECADE
puts "  02 There are #{total_minutes_per_decade} Minutes in a Decade"

# How many seconds old are you?
# puts "Please enter your age"
# my_age = gets.chomp!
# puts my_age.to_i
total_seconds_in_myage = total_hours_per_year * MINUTES_PER_HOUR * SECONDS_PER_MINUTE * MY_AGE
puts "  03 There are #{total_seconds_in_myage} Seconds in my Age"

puts "PART 2 ......................................."
# 3.0 / 2
# 3 / 2.0
# 4 ** 2.0
# 4.1 % 2
result = 3.0/2
puts "  01> 3.0/2 = #{result}"
result = 3/2.0
puts "  02> 3/2.0 = #{result}"
result = 4**2.0
puts "  03> 4**2.0 = #{result}"
result = 4.1 % 2
puts "  04> 4.1 % 2 = #{result}"

puts "PART 3 ......................................."
# Put "Hello world!" onto the screen
puts "Hello world!"

puts "PART 4 ......................................."
# Make a new variable called 'name', set it's value to your name (as a string)
name = "Amen Kel Gatwech"
puts "My name is #{name}"