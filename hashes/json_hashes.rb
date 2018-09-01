# items = [{ customer: "John", item: "Soup", cost: 8.50}, 
#          {customer: "Sarah", item: "Pasta", cost: 12}, 
#          {customer: "John", item: "Coke", cost: 2.50}
#         ]

#data = eval(data) 

# Create a new text file it doesn't exist and write to it
#File.write("data.txt", items)

# Read from file and store results in data
#data = File.read("data.txt")

# convert items to json format and write to file
#File.write('items.json', JSON.dump(items))
#JSON.parse(s,:symbolize_names => true) ..... converts json keys to symbol
#--------------------------------------------------------------------------------

# loading json library
require 'json'
data = JSON.parse(File.read('items.json'), :symbolize_names => true )

# Get customer input
total = 0.0
print "Please Enter customer's name: "
name = gets.chomp.downcase

system "clear"
data.each do |item|
 
  if item[:customer].downcase == name       #if item['customer'].downcase == name
      total += item[:cost]
  end  
end

puts data.inspect
puts ""
puts "#{name.capitalize} owes $#{'%.2f' %  total}"




