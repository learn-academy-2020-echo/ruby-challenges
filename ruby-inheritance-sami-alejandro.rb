class Animal
  attr_accessor :alive, :age, :life_expetancy
  def initialize(life_expetancy)
    @alive = true
    @age = 0
    @life_expetancy = life_expetancy
  end

  def age_adder
    if @age < @life_expetancy
      @age = @age + 1
    elsif @age >= @life_expetancy
      @alive = false
      "This animal has passed away"
    end
  end

  def get_info
    "#{@alive} and #{ @age }"
  end

end

cat_dog = Animal.new(4)
p cat_dog.age_adder
p cat_dog
p cat_dog.get_info


class Fish < Animal
  attr_accessor :cold_blooded
  def initialize(life_expetancy)
    super(life_expetancy)
    @cold_blooded = true
  end
end


class Salmon < Fish
  attr_accessor :species
  def initialize(life_expetancy, species)
    super(life_expetancy)
    @species = species
  end

  def salmon_species
    "This salmon is #{ @species }"
  end

  def get_salmon_info
  "Is this salmon alive? #{ @alive }. It is #{ @age } years old. Is it cold blooded? #{ @cold_blooded }. It is of the species #{ @species }"
  end
end


fishy = Fish.new(3)

p fishy
fishy.age_adder
fishy.age_adder
fishy.age_adder
fishy.age_adder

p fishy.get_info
p fishy.age
fishy_salmon = Salmon.new(4, 'Atlantic')
p fishy_salmon
p fishy_salmon.salmon_species
p fishy_salmon.age_adder
p fishy_salmon.get_salmon_info
# p fishy_salmon
