
class Animal
  attr_accessor :description, :alive, :age
     def initialize description
        @description = description
        @age = 0
        @alive = "yes"
     end

     def aging
        @age = @age + 1
     end

     def animal_info
      "my animal is #{@description}, is #{@age} years old and its currently #{@alive}"
     end

  end

class Fish < Animal
  attr_accessor :cold_blooded
  def initialize description
    super description
    @cold_blooded = "yes"
  end
end

class Salmon < Fish
  attr_accessor :species
  def initialize (description)
    super description
    @species = "atlantic"
    end

end


new_animal = Salmon.new "warmblooded"
p new_animal
# anim1 = Animal.new  "test"
# anim2 = Animal.new ("fish")
# # p anim2.aging
# # p anim2
# anim2.aging
# anim2.aging
# anim2.aging
# p anim2.animal_info
# p animal_info
