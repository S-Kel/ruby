require 'geocoder'

class Animal
end


class Pet < Animal
    def initialize(name)
        @name = name
    end
    def pat
        puts "#{@name} says: Thanks for the pat!"
    end
    def speak(word)
        puts "#{@name} says #{word}!"
    end
end

class Cat < Pet
    def speak
        super("Meow!")
    end
end

class Walk
    attr_accessor :distance, :when, :location

    def initialize(location, distance)
        @location = location
        @distance = distance
        @when = Time.now
        results = Geocoder.search(location + ", AU")        
        @lat = results.first.coordinates[0] 
        @lng = results.first.coordinates[1]
    end

    def display_location
        "#{@location} (#{@lat}, #{@lng})"
    end
end

class Dog < Pet
    attr_accessor :breed, :location

    def initialize(dog_name, breed, location)
        # @name = dog_name
        super(dog_name)
        @breed = breed
        @location = location
        @walks = 0
        @walk_details = []
        puts 'Initialize running'
        self
    end
    def speak
        super("Woof!")
        return self
    end
    def walk(location, distance)
        @walks += 1
        @walk_details.push(Walk.new(location, distance))
        # print @walk_details.inspect
        return self
    end
    def total_distance
        dist = 0
        for walk in @walk_details
            dist += walk.distance
        end
        dist
    end
    def display_walks
        puts "I have been on #{@walks} walks."
        for walk in @walk_details
            puts "I walked #{walk.distance}km in #{walk.display_location} on #{walk.when.strftime('%d/%m/%Y')}"
        end
        return self
    end
        # # setter
    # def name=(value)
    #     @name = value
    # end
    # # getter
    def name
        return @name
    end
end

# dog1 = Dog.new("Snoopy", "Blue Heeler", "Brisbane").speak
# dog1.walk("Brisbane", 20)
# dog1.walk("Brisbane", 10)
# dog1.display_walks
# puts dog1.total_distance

# dog1.name = "Rover"
lassie = Dog.new("Lassie", "Collie", "Sydney")
#lassie.name = "Lassie"
#puts dog1.inspect
#puts lassie.inspect
#dog1.walk.walk.display_walks.speak
#dog1.walk
#dog1.display_walks
lassie.pat
lassie.speak
#puts dog1.location

cat1 = Cat.new("Pixie")
cat1.speak
cat1.pat