#1. Create a person object
person = {name: 'John', height: '2m', weight: '70kgs'}

#2. Add to the hash: John's occupation (web developer) and hobbies (art).
person[:job] = 'Engineer'
puts person.inspect 

#3. Delete John's weight from the hash
person.delete(:weight) 
puts person.inspect 

#4. Retrieve John's height from the hash
height = person[:height]
puts "John is #{height} tall"

#5. Iterate through the hash so we see John's details.
person.each do |feature, value|
  puts "#{feature} \t #{value}"
end