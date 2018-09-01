#HASHES
#1. Adding hashes
#2. Merging hashes
#3. Comparing hashes
#4. METHODS:  
=begin https://www.tutorialspoint.com/ruby/ruby_hashes.htm
      .select(key, val) | .each(key,val) | .each_key(key) | .each_value(val) | .[key] | .inspect() | .invert() |.keys() | .length | .merge(hash)   | .merge(other_hash) { |key, oldval, newval| block } |    | .rehash   |
      .shift  | .reject | .replace(hash) | .delete(key)   | .clear()  | .empty?() | .size() | .sort() | 
=end 

hashes = {
  john:  21,
  sarah: 22,
  peter: 32,
  james: 12,
  pedre: 43
}

hashes.select {|key, v| puts "#{key} is #{v} years old" if v > 21}
hashes.each_key {|key|  puts key }
hashes.each_value {|value| puts value }
puts 
#---------------------------------------------------------------------------------------------------------------

# CHALLENGE 1
# Comparison between instantiating a Symbol versus instantiating a String:
    # Instantiate a String in IRB with my_string = String.new("abc") and then instantiate a Symbol with just my_symbol = :abc
    # Verify the Data Type of each (i.e. my_symbol.class) to confirm that prefixing with the : character creates a Symbol as an instances of the Symbol class. Note that we cannot create an instance of a Symbol with my_symbol = Symbol.new(), since Symbol.methods does not contain new)
  # Create two Hashes that have the same Keys (Symbols) and Values. 
    #- Create one using the old rocket ship syntax i.e. { :name => "luke", :address => "Sydney" } and 
    #- the other using the new Ruby syntax i.e. { name: "luke", address: "Sydney" } and 
    #- compare them to see if they are the same. Find out why the Ruby syntax changed.
  # Multiple Symbols representing same value point to same Object IDs. Symbols used in a Hash to provide Unique identifier. Run these examples in IRB:
    # :test.object_id; :test.object_id; :"test".object_id; :"test".object_id
  # Multiple Strings with reference to same value all have different Object IDs since Strings are Mutable. Run these examples in IRB:
    # "test".object_id; "test".object_id; "test".object_id
#---------------------------------------------------------------------------------------------------------------

#1. instantiating a Symbol versus instantiating a String
my_string = String.new("abc")
my_symbol = :abc 

#2. Converting from String to Symbol and then revert the Symbol back into a String again 
my_string_to_sym = my_string.to_sym
my_symbol_to_str = my_string_to_sym.to_s

#3. Create two Hashes that have the same Keys (Symbols) and Values and compare if same
person1 = { :name => "luke", :address => "Sydney" }
person2 = {  name:   "luke",  address:   "Sydney" }

# 4. Run these examples
# a. Multiple Symbols representing same value point to same Object IDs
puts :test.object_id 
puts :test.object_id 
puts :"test".object_id 
puts :"test".object_id

# b. Multiple Strings with reference to same value all have different Object IDs since Strings are Mutable
puts "test".object_id
puts "test".object_id 
puts "test".object_id

# Display
puts my_string.inspect  
puts my_symbol.inspect 
puts my_string_to_sym.inspect  
puts my_symbol_to_str.inspect  
puts "person 1 is equal to person 2" if person1 == person2 
puts "person 1 is equal to person 2" if person1.include?(person2) 