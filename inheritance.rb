# Story: As a developer, I can make an Animal.
# Story: As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# Story: As a developer, I can give my Animal an age of 0 upon creation.
# Story: As a developer, I can age my Animal up one year at a time.
# Story: As a developer, I can return my Animal's age, as well as if they're alive. Hint: Use attr_accessor as well as an initialize method.
# Story: As a developer, I can create a Fish that inherits from Animal.
# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# Story: As a developer, I can see that my Salmon is cold-blooded.


class Animal
    attr_accessor :status, :age
    def initialize 
        @status = true
        @age = 0
    end

  def increase_age 
        @age += 1
  end

  def change_status 
       @status = false
  end

  def get_animal_info 
    if @status == true 
       "This animal is alive and is #{age} years old"
    else 
        "This animal is not alive, but it was #{age} years old when it died"
    end
  end

end

test = Animal.new
p test.increase_age
p test.increase_age
p test.increase_age
p test.increase_age
#p test.change_status
p test.get_animal_info

# Story: As a developer, I can create a Fish that inherits from Animal.

class Fish < Animal
  attr_accessor :cold_blooded
  def initialize
    super()
    @cold_blooded = true
  end
end

test2 = Fish.new
p test2
test2.increase_age
p test2.get_animal_info

# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# Story: As a developer, I can see that my Salmon is cold-blooded.
# Story: As a developer, I can age my Salmon up.
# Story: As a developer, I can see a message that tells me all of my Salmon's information.
# Story: As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Salmon < Fish
  attr_accessor :species
  def initialize (species)
    super()
    @species = species
  end
  
  def get_salmon_info 
   if @age >= 4
      change_status
      "This salmon is not alive, but lived to the ripe old age of #{age} years old"
   else
      "This salmon is alive and is #{age} years old"
   end
  end
end

salmon1 = Salmon.new "atlantic"
#p salmon1.cold_blooded
 salmon1.increase_age
 salmon1.increase_age 
#  salmon1.increase_age
#  salmon1.increase_age
p salmon1.get_salmon_info




# Story: As a developer, I can create a Mammal that inherits from Animal.

# Story: As a developer, I can initialize all of my Mammals to be warm_blooded.

class Mammal < Animal
  attr_accessor :warm_blooded
  def initialize
    super()
    @warm_blooded = true
  end
end

# Story: As a developer, I can create a Bear that inherits from Mammal.

# Story: As a developer, I can age my Bear up.

# Story: As a developer, I can see a message that tells me all of my Bear's information.

# Story: As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Bear < Mammal
  def initialize ()
    super()
  end
  
  def get_bear_info 
   if @age >= 20
      change_status
      "This bear is not alive, but died peacefully at the old age of #{age} years old"
   else
      "This bear is alive and is #{age} years old"
   end
  end
end

bear1 = Bear.new
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
bear1.increase_age
p bear1.increase_age
p bear1.get_bear_info

# Story: As a developer, I can create a Mammal of my choice.

# Story: As a developer, I can interact with the new Mammal via various methods.

# Story: As a developer, I can see a message that tells me all of my new Mammal's information.

class Cat < Mammal
  attr_accessor :lives
  def initialize ()
    super()
    @lives = 9
  end

  def decrease_lives
    if @lives >= 1
    @lives -= 1
    else 
      change_status
    end 
  end

  def get_cat_info 
   if @status == false
      "This cat has used all of his 9 lives. It lived to the age of #{age} years old"
   else
      "The cat is alive and is #{age} years old. The cat still has #{lives} lives"
   end
  end
end

cat1= Cat.new
cat1.increase_age
cat1.increase_age
cat1.increase_age
cat1.decrease_lives
p cat1.get_cat_info