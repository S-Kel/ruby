=begin  
  1. Create a ruby application that requests the name of a classmate, and displays their birthday and your birthday. Use at least one Hash and one Array in the solution.

      Bonus:

      Display the number of days between your birthdays.
      Create a method to display their star sign based on their birthday.
      Someone's probably already coded this date to star sign functionality - replace your method with a gem

      Aries (March 21-April 19)
      Taurus (April 20-May 20)
      Gemini (May 21-June 20)
      Cancer (June 21-July 22)
      Leo (July 23-August 22)
      Virgo (August 23-September 22)
      Libra (September 23-October 22)
      Scorpio (October 23-November 21)
      Sagittarius (November 22-December 21)
      Capricorn (December 22-January 19)
      Aquarius (January 20-February 18)
      Pisces (February 19-March 20) 
      zodiac = [Aries]
=end
#--------------------------------------------------------------------------------
require 'date'
require '../wcolorize'

people = [{ student: "John",  age: 32, birthday: "23/02/1990"}, 
          { student: "Kel" ,  age: 36, birthday: "01/01/1988"},
          { student: "James", age: 36, birthday: "Jan 1st"},
          { student: "Jaouad", age: 36, birthday: "05/05/1980"},
          { student: ""} 
         ]

puts "Please Enter Your Name :> "
name     = gets.chomp.downcase 

system "clear"
people.each do |student|
  if student[:student].downcase == name 
    puts "#{name.capitalize}, your birthday is on #{ student[:birthday]}, and mine is on Jan 1st"
    break
  end
end
#--------------------------------------------------------------------------------


puts "Please Enter Your Birthday"                                          #format: 01/01/1900
birthday = gets.chomp.split('/')          
birthday.pop                               
birthday = Date.parse(birthday.push(DateTime.now.year.to_s).join("/"))      

student_age = ""

people.each do |student|
  if student[:student].downcase == "kel" 
    student_age = student[:birthday].split("/")
    student_age.pop 
  end
end
student_age = Date.parse(student_age.push(DateTime.now.year.to_s).join("/")) 

num_days  = birthday <= student_age ? (student_age - birthday) :  ( birthday - student_age )        
zodiac    = zodiac_sign([birthday.month, birthday.day ])
in_colors = colorize(" #{zodiac} ", $font_colors[:yellow], $bg_colors[:red])
num_colors = colorize(" #{num_days.to_i} ", $font_colors[:black], $bg_colors[:green])

system "clear"
print "#{ name }, #{' '.ljust(1)} << Your Star Sign is ".upcase + "#{ in_colors } >>\n"
puts "There are".upcase +  " #{ num_colors } " + "days between our birthdays\n".upcase
puts "#{" " * 10}<:>" * 1





#puts colorize("days between our birthdays\n".upcase, $font_colors[:light_green])

#puts people.inspect

# print zodiac stars
#
#puts "Month: #{ birthday.month }\n Birthday: #{ birthday.day }"
#puts "#{ zodiac }"
#puts colorize(" My name ", $font_colors[:yellow], $bg_colors[:red])