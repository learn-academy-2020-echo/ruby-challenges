# Story: As a developer, I can make an Animal.
# class Animal
# # Story: As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# def initiliaze (status, age)
#     @status = status 
# # Story: As a developer, I can give my Animal an age of 0 upon creation.
#     @age = age 
# # Story: As a developer, I can age my Animal up one year at a time.
# def set_status
#     @status = "alive" 

class Animal
    attr_accessor :alive, :age, :type_of_blood 
    def initialize (alive, age, type_of_blood )
        @alive = alive
        @age = age + 1
        @type_of_blood = type_of_blood
    end
    def get_animal_info
        @alive
        @age + 1
        @type_of_blood 
    end
end
# Story: As a developer, I can return my Animal's age, as well as if they're alive. Hint: Use attr_accessor as well as an initialize method.

# Story: As a developer, I can create a Fish that inherits from Animal.

class Fish < Animal 
    def initiliaze(alive, age, type_of_blood)
        super(alive, age, type_of_blood)
    end
def get_fish_info
    @alive
    @age
    @type_of_blood
end
end
p fish1 = Fish.new("Alive", 0,"cold blooded")
p fish1



# Story: As a developer, I can initialize all of my fish to be cold_blooded (yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that).

# Story: As a developer, I can create a Salmon that inherits from Fish.

class Salmon < Fish
    def initiliaze(alive, age, type_of_blood)
        super(alive, age, type_of_blood)
        @species 
    end
def get_fish_info
    @alive
    @age
    @type_of_blood
    @species = "Sockeye"
end
end

jeff = Salmon.new("Alive", 0, "cold blooded")
p jeff.get_fish_info
p jeff
# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).

# Story: As a developer, I can see that my Salmon is cold-blooded.

# Story: As a developer, I can age my Salmon up.

# Story: As a developer, I can see a message that tells me all of my Salmon's information.

# Story: As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# def old_fish
#     if @age >= 4
#         return "Dies piecefully from old age"
#     end
#     return "Still alive"
# end
# Story: As a developer, I can create a Mammal that inherits from Animal.

class Mammal < Animal 
    def initiliaze(alive, age, type_of_blood)
        super(alive, age, type_of_blood)
    end
def get_mammal_info
    @alive
    @age
    @type_of_blood = "Warm blooded"
end
end



# Story: As a developer, I can initialize all of my Mammals to be warm_blooded.

# Story: As a developer, I can create a Bear that inherits from Mammal.
class Bear < Mammal
    def initiliaze(alive, age, type_of_blood)
        super(alive, age, type_of_blood)
    end
def get_bear_info
    @alive
    @age
    @type_of_blood = "Warm blooded"
end
def old_bear
    if @age >= 20
        return "Dies piecefully from old age"
    end
    return "Still alive"
end
end

rudy = Bear.new("Alive", 5, "Warm blooded")
p rudy
# Story: As a developer, I can age my Bear up.

# Story: As a developer, I can see a message that tells me all of my Bear's information.

# Story: As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.

# Story: As a developer, I can create a Mammal of my choice.

class Beluga < Mammal 
    def initiliaze(alive, age, type_of_blood)
        super(alive, age, type_of_blood)
    end
def get_mammal_info
    @alive
    @age
    @type_of_blood = "Warm blooded"
end
def old_whale
    if @age >= 50
        return "Dies piecefully from old age"
    end
    return "Still alive"
end
end

shamu = Beluga.new("alive", 50, "Warm blooded" )
kid =Beluga.new("Alive", 47,"Warm Blooded")
larry =Beluga.new("Alive", 53, "Warm Blooded")
p shamu.old_whale
p kid.old_whale
p larry.old_whale
p shamu.get_mammal_info
# Story: As a developer, I can interact with the new Mammal via various methods.

# Story: As a developer, I can see a message that tells me all of my new Mammal's information.

# Stretch Challenges
# Story: As a developer, I can keep a collection of two of each Animal. Hint: You'll want to add your Animals into an array.

# Story: As a developer, I can sort my collection of Animals based on age. Hint: Find out how the spaceship operator can help you with an array.

# Super Stretch Challenge
# Story: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.

