class HardDrive
end

class Computer < HardDrive
end

# inheritance = is-a relationship ("subclass is a superclass" makes logical sense)

# "Computer is a HardDrive ?" - doesn't make sense

# "Computer has a HardDrive" - DOES make sense! - Composition

class Engine
end

class Car
    def initialize(engine)
        @engine = engine
    end
end

car1 = Car.new(Engine.new)
