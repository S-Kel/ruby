# Requiring terminal colorizer
require 'geocoder'
require '../wcolorize'

class Pet 
  def initialize 
  end

  def speak(say)
    puts "#{name} #{say}"
  end
end

class Walk 
    attr_accessor :distance, :when, :location, :lat, :lng

    def initialize(location, distance)
      @location = location
      @distance = distance
      @when     = Time.now
      results   = Geocoder.search(location + ", AU")
      #puts results.first.coordinates.inspect 
      @lat = results.first.coordinates[0]
      @lng = results.first.coordinates[1]
      #return self
    end
    def display_location 
      puts "#{@location} (#{@lat}, #{@lng})"
    end
end

class Cat 

  attr_accessor :distance, :location

  def initialize(name, walks = 0, location)
      @name = name
      @walks = walks
      @location = location
      @walk_history = []
      puts "Initializing Cat class".upcase 
      return self
  end

  def speak     
    puts "#{colorize(" #{@name} says Meow! ", $font_colors[:yellow], $bg_colors[:red])}"
    # super("Meaw!")
    return self
  end

  def walk(location, distance)          # Increase by 1 when called 
    @walks += 1
    @walk_history.push(Walk.new(location, distance ))
    #puts "#{colorize("I have been for #{@walk} walks today.", $font_colors[:cyan])}"
    #puts @walk_history.inspect
    return self
  end
  def total_distance
    dist = 0
    @walk_history.each do |trip| 
      dist += trip.distance
    end
    return dist
  end

  def display_walk 
    puts "I have been on #{@walks} walks."
    @walk_history.each do |trip| 
      trip_time = colorize(" #{trip.when.strftime('%m/%d/%Y at %I:%M:%S %p')} ", $font_colors[:green])
      geo_locat = colorize(" #{trip.lat} #{trip.lng} ", $font_colors[:red])
      puts "I walked #{trip.distance}km in #{geo_locat} " + 
           "on #{trip_time}"
    end
    return self
  end

  def name 
    return name
  end
  
end

class Dog 

  def initialize(name)
    @name = name
  end

  def name 
    return name
  end
  
end
cat_one = Cat.new("Pixie",0, "Brisbane")
             .speak()
             .walk("KG Grove", 20)
             .walk("BR South", 15)
             .display_walk() 
puts "Total distance of #{colorize("#{cat_one.total_distance}km", $font_colors[:red])}"
#cat_one.speak
#cat_one.walk 
#cat_one.walk

##--------------------------------------------------------------------------------------------------------------
# Composition
# Inheritance = is-a relationship
# Computer is a HardDrive?" = doesn't make sense"
# Computer has a HardRive" - DOES make sense! - Composition

