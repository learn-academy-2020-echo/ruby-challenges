
class Animal 
     def initialize description
        @description = @description
        @alive = "true"
        @age = 0
     end
     
     def get_animal_info
        @description
     end

     def aging 
       @age = @age + 1
     end
end

class Details < Animal
    def initialize description
        super (description)
    end

    def get_details
        @description
    end
end



# anim1 = Animal.new  "test" 
anim2 = Details.new ("dolphin" "test")
p anim2.get_details
p anim2.get_animal_info

# p anim1
# p anim1.aging
# p anim1.get_animal_info
# p anim1
# p anim1.get_details

