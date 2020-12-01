# Use both setter and getter methods for this challenge.

# Story: As a developer, I can create a Task.
# Story: As a developer, I can give a Task a title and retrieve it.
# Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.


class Task

    #setters
        def set_task title
            @title = title
        end

        def set_done done
            @done = done
        end

    #getters

        def title
            @title
        end

        def done
            @done
        end

 end


 groceries = Task.new
 p groceries

 # Story: As a developer, I can give a Task a description and retrieve it.

 groceries.set_task "go to the supermarket"
 p groceries

 # Story: As a developer, I can mark a Task done.

 p groceries.set_done "yes"
 p groceries

 # Story: As a developer, when I print a Task that is done, its status is shown.

 p "status:"
 p groceries


# Challenge: Color Palette
# Use attr_accessor for this challenge.

# Story: As a developer, I can create a ColorPalette.
# Story: As a developer, I can initialize my color palette to contain 3 colors.

# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.

class ColorPalette
    attr_accessor  :color1, :color2, :color3

    def initialize ( color2, color3)
        @color1 = "blue"
        @color2 = color2
        @color3 = color3
    end

    def get_color_palette
        @color1
        @color2
        @color3
    end


    def show_color 
      puts  "#@color1, #@color2, and #@color3 are in your color palette."
   end
end

colors = ColorPalette.new("red","yellow")

# Story: As a developer, I can print the values of each individual color.
puts colors.color1
puts colors.color2
puts colors.color3

# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.

p show_color