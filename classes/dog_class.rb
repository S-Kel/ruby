require '../wcolorize'

class Dog   

  # Getter/Setter for name create automatically and assign them to nil
  attr_accessor :name, :breed
  def initialize(dog_name = "", breed = "")
    @name = dog_name
    @breed = breed
    puts "Initialize Running..."
  end
  def speak                     # Action
    color    = {cyan: "36"}
    bg_color = {red: "42" }

    puts colorize(" #{ @name } says Woof! ".upcase, color[:cyan])
    #puts "#{ @name } \e[31m#{sound}\e[0m "
  end

  # def name=(value)              # Setter
  #     @name = value
  # end
  # def name 
  #   return @name                # Getter
  # end
end

# Instantiate two dog classes
fido   = Dog.new 
lassie = Dog.new

# Setting name
fido.name = "Fido"
lassie.name = "Lassie"

# Read dog name
puts fido.name 
puts lassie.name 

# Print out dog class
puts fido.inspect 
puts lassie.inspect 

fido.speak 
lassie.speak