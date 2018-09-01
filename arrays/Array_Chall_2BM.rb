#1. Use system clear to clear the screen
system 'clear'

# Global variables
user    = "Mr. Kel"
welcome = "Welcome to Grocery App."
info    = "Info: You can enter multiple comma separated grocery items"
message = "What would you like to do? Options(add, show, quit)\n :> "
prompt  = "Please Enter 3 Moore or comma separated Grocery Items & hit enter\n :> "
success = "You have successfully added three items to the grocery list - duplicates will be ignored: "
#2. Create an Array list to store grocery items
grocery_list = []


#3. Ask User for at least 3 grocery items to store in the list
puts info.upcase 
puts "#{' '.ljust(18)}Or enter item and hit enter.".upcase
print " ".ljust(7)
puts "*"*51

# Temporary storage to hold input before processing
temps = []
print prompt
while true    
    user_input = gets.chomp! 
    
    items = user_input.split(',')
    
    if items.any? && 
      !['q','quit'].include?(items[0]) && 
      !['add'].include?(items[0]) && 
      !['show'].include?(items[0])
        #items.uniq!
        items.each do |item|
            temps.push(item.strip)
        end
        temps.uniq!

        #temp = item
        if temps.length < 3
            print "Please Enter at least #{3 - temps.length } more items and hit enter\n :> "
        else
            system 'clear'
            puts success
          
            temps.each_with_index do |item, index|
                grocery_list.push(item.capitalize)                
                puts "#{' '.ljust(3)} [#{ index + 1 }] #{ item.capitalize }"
            end
            
            grocery_list.uniq!
            temps.clear    
            print message   
        end
      end

    #print message 
    
    if ['add'].include?(items[0])
        system 'clear'        
        print "Add more items :> "
        #next
    elsif ['show'].include?(items[0])
        system 'clear'
        puts "Welcome, #{ user }#{''.ljust(40)}You have #{ grocery_list.length } Grocery Items".upcase 
        puts "How many items would you like to see?"
        len = 0
        num_items = gets.chomp.to_i
        
        len = grocery_list.length >= num_items ? num_items : grocery_list.length
        grocery_list.sort! 
        
        system 'clear'
        puts "*"*72
        puts "#{' '.ljust(18)} Thanks for using Grocery App, Mr. Kel".upcase
        puts "#{' '.ljust(21)} Here are your grocery items".upcase 
        len.times do |item|
          puts "#{' '.ljust(31)} [#{ item + 1 }] #{grocery_list[item]}"
        end
        puts "*"*72
        print message 
    else

        #puts " "
        #puts temps.inspect
    end
    
    break if ['q','quit'].include?(user_input.downcase)
end


=begin 
#4. Display a well formated list back to user
    a. Quantity to Display, 
    b. Sort the list alphabetically 
    c. Format the list 
    d. Display a nice looking list back to user 
=end
system 'clear'
puts "*"*72
puts "#{' '.ljust(18)} Thanks for using Grocery App, Mr. Kel".upcase
puts "#{' '.ljust(21)} Here are your grocery items".upcase 
grocery_list.each_with_index do |item, index|
    puts "#{' '.ljust(31)} [#{index + 1}] #{item.upcase}" 
end
puts "*"*72
