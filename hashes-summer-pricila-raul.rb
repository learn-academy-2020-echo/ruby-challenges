# # As a developer, I can create a hash called my_phone using the Ruby method .new.

# my_phone = Hash.new
# # p my_phone

# # As a developer, I can add five key:value pairs of app names and their descriptions to my hash.

# my_phone [:googlemaps] = 'helps navigate and find places'
# my_phone [:whatsapp] = 'chatting with friends'
# my_phone [:uber] = 'rideshare app'
# my_phone [:snapchat] = 'sending pictures to friends that go away after viewing'
# my_phone [:venmo] = 'sending money between accounts'

# # p my_phone   

# # As a developer, I can return a value from my_phone by passing in the name of a key.

# # p my_phone[:googlemaps]

# # As a developer, I can update two keys in my_phone.

# my_phone[:maps] = my_phone.delete :googlemaps
# # p my_phone[:maps]

# my_phone[:lyft] = my_phone.delete :uber
# # p my_phone[:lyft]

# # p my_phone


# # As a developer, I can update two values in my_phone.

# my_phone[:lyft] = 'a better rideshare app than uber'

# # p my_phone[:lyft]

# my_phone[:whatsapp] = 'easier way to message people in other countries'

# # p my_phone[:whatsapp]

# # As a developer, I can delete two key:value pairs from my_phone.

# my_phone.delete :lyft
# my_phone.delete :whatsapp
# # p my_phone

# # As a developer, I can use an enumerable method to return information about all of my_phone's applications.

# my_phone.each do |key, value|
#     p "key is #{key} and value is #{value}."
# end


# Challenge: Tasklist
# Use both setter and getter methods for this challenge.

# Story: As a developer, I can create a Task.
# Story: As a developer, I can give a Task a title and retrieve it.
# Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.

# class Task 
# attr_accessor :title, :description, :done 
# def initialize(title, description, done)
#     @title = title
#     @description = description
#     @done = done 
# end
# def task_check 
#     if @done == "yes"
#         return 'This Task is done '
#     end
#     return 'This task needs to be finished'
# end
# end

# p task1 = Task.new("Bathroom", "Mop the bathroom", "yes")
# p task2 = Task.new("Closet", "Clean closet out", "no")
# p task1.task_check
# p task2.task_check

# Challenge: Color Palette
# Use attr_accessor for this challenge.
# Story: As a developer, I can create a ColorPalette.
# Story: As a developer, I can initialize my color palette to contain 3 colors.
# Story: As a developer, I can print the values of each individual color.
# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.

class ColorPalette
    attr_accessor :color1, :color2, :color3
    def initialize(color1, color2, color3)
        @color1 = color1
        @color2 = color2
        @color3 = color3
    end
end

blue = ColorPalette.new("dark blue", "light blue" , "blue")
# p blue.color1
# p blue.color2
# p blue.color3
blue :color1 = "gray blue"
p blue.color1

# class Task 
#     def set_title(title) 
#         @title = title
#     end
#     def set_description(description)
#         @description = description
#     end
# def set_status(status)
#     @status = status
# end
# def get_title 
#     @title
# end
# def get_description
#     @description
# end
# def get_status
#     @status
# end
# end
# coding = Task.new
# coding.set_title("work")
# p coding.get_title
# coding.set_description("writing code in programming")
# p coding.get_description
# coding.set_status("work is done")
# p coding.get_status

# class ColorPalette 
#     attr_accessor :color1, :color2, :color3 
#     def initialize(color1, color2, color3)
#         @color1 = color1
#         @color2 = color2
#         @color3 = color3
#     end
# end
