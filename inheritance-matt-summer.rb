class Animal 
    attr_accessor :alive, :age
    def initialize(alive, age)
        @alive = alive
        @age = age
    end

    def increase_age
        @age = @age + 1
    end

    def get_animal_info
        if @alive == true
            "This animal is alive & their age is #{ @age }."
        else
            "This animal is dead"
        end
    end
end

class Fish < Animal
    def initialize(alive, age, cold_blooded)
        super(alive, age)
        @cold_blooded = "cold-blooded"
    end
end

class Salmon < Fish
    def initialize(alive, age, cold_blooded, species)
        super(alive, age, cold_blooded)
        @species = species
    end
end

first_animal = Animal.new(true, 0)


# p first_animal
# p "animal age"
# p first_animal.increase_age
# p first_animal.increase_age
# p first_animal.increase_age
# p first_animal.get_animal_info

# p first_fish = Fish.new("cold-blooded")
p first_salmon = Salmon.new(true, 0, "cold-blooded","Atlantic")
p first_salmon.increase_age
p first_salmon.increase_age
p first_salmon.increase_age