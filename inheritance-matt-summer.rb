class Animal
    attr_accessor :alive, :age, :life_expectancy
    def initialize(alive, age, life_expectancy)
        @alive = alive
        @age = age
        @life_expectancy = life_expectancy
    end

    def increase_age
        @age = @age + 1
    end

    def animal_mortality
        if @age == @life_expectancy
            @alive = false
        end
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
    def initialize(alive, age, life_expectancy, cold_blooded)
        super(alive, age, life_expectancy)
        @cold_blooded = "cold-blooded"
    end
end

class Salmon < Fish
    def initialize(alive, age, life_expectancy, cold_blooded, species)
        super(alive, age, life_expectancy, cold_blooded)
        @species = species
        @life_expectancy = 4
    end

    def get_salmon_info
        if @alive == true
            "This #{ @species } Salmon is alive, it is #{ @cold_blooded } & it's age is #{ @age }."
        else
            "This Salmon is dead"
        end
    end
end

# class Octopus < Fish
#     def initialize(alive, age, life_expectancy, cold_blooded, species)
#         super(alive, age, life_expectancy, cold_blooded)
#         @species = species
#         @life_expectancy = 10
#     end

#     def get_octo_info
#         if @alive == true
#             "This #{ @species } Octopus is alive, it is #{ @cold_blooded } & it's age is #{ @age }."
#         else
#             "This Octopus is dead"
#         end
#     end
# end

class Mammal < Animal
    def initialize(alive, age, life_expectancy, warm_blooded)
        super(alive, age, life_expectancy)
        @warm_blooded = "warm-blooded"
    end
end

class Bear < Mammal
    def initialize(alive, age, life_expectancy, warm_blooded, species)
        super(alive, age, life_expectancy, warm_blooded)
        @species = species
        @life_expectancy = 20
    end

    def get_bear_info
        if @alive == true
            "This #{ @species } Bear is alive, it is #{ @warm_blooded } & it's age is #{ @age }."
        else
            "This #{ @species } Bear is dead"
        end
    end
end

# first_animal = Animal.new(true, 0, )


# p first_animal
# p "animal age"
# p first_animal.increase_age
# p first_animal.increase_age
# p first_animal.increase_age
# p first_animal.get_animal_info


p first_salmon = Salmon.new(true, 0, 4, "cold-blooded","Atlantic")
3. times{p first_salmon.increase_age}
p first_salmon.animal_mortality
p first_salmon.get_salmon_info

p second_salmon = Salmon.new(true, 0, 4, "cold-blooded","Farm-Raised")
p second_salmon.get_salmon_info


p first_bear = Bear.new(true, 0, 20, "warm-blooded", "Grizzly")
19. times{p first_bear.increase_age}
p first_bear.animal_mortality
p first_bear.get_bear_info

p second_bear = Bear.new(true, 0, 20, "warm-blooded", "Polor")
10. times{p first_bear.increase_age}
p second_bear.animal_mortality
p second_bear.get_bear_info
animal_collection = [first_bear, second_bear, first_salmon, second_salmon]
puts animal_collection.sort! {|first_animal.age, second_animal.age| first_animal.age <=> second_animal.age}