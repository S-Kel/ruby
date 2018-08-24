system 'clear'

# Create an Array for animals
four_letter_animals = ["Calf", "Duck", "Elephant", "Goat", "Lamb", "Lion", "Mule", "Dog"]

print "#{four_letter_animals}\n"

# Add Puma to end of the Array
four_letter_animals.push('Puma')
print "#{four_letter_animals}\n"

# Insert Joey after goat and before Lamb
four_letter_animals.insert(4, 'Joey')
print "#{four_letter_animals}\n"

# Delete Dog
four_letter_animals.delete_at(four_letter_animals.length-2)
print "#{four_letter_animals}\n"

# Reverse the order of the Array
four_letter_animals.reverse!
print "#{four_letter_animals}\n"

# Reverse the order of the Array
four_letter_animals.each_with_index do |animal, index|
  if animal == "Elephant"
    four_letter_animals[index] = "Foal"
  end
end
print "#{four_letter_animals}\n".upcase

# Add bear to the end of the Array
four_letter_animals.push("Bear")
print "#{four_letter_animals}\n".upcase

# Reverse the order of the Array again
four_letter_animals.reverse!
print "#{four_letter_animals}\n"


