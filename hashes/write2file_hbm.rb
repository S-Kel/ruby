#1. Write a Hash to a File, and then 
#2. read it back from the File, 
#3. parsing it using option symbolize_keys to convert the retrieved Hash Keys from Strings (the way they are stored in the File) back into Symbols:
# Loading active support to convert string to symbolize keys
#require 'active_support/all'


# items = [{ customer: "John",  item: "Soup",  cost: 8.50}, 
#          { customer: "Sarah", item: "Pasta", cost: 12}, 
#          { customer: "John",  item: "Coke",  cost: 2.50}
#         ]

items = [{ "customer" => "John",  "item" => "Soup",  "cost" => 8.50}, 
         { "customer" => "Sarah", "item" => "Pasta", "cost" => 12.0}, 
         { "customer" => "James", "item" => "Coke",  "cost" => 2.50}
        ]

file_name = 'hash.txt'

# Open and write to the file
File.open(file_name, 'r') do |f|
    f.write(items)
end

# Read from file and store results in data
data = eval(File.read(file_name))  

# Display results
system "clear"
puts "Name \tItems \tCost"
data.each do |customer|
  puts "#{customer["customer"]}   #{customer["item"]}     $#{customer["cost"]}"
end

