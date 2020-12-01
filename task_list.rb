# Challenge: Tasklist
# Use both setter and getter methods for this challenge.

# Story: As a developer, I can create a Task.
# Story: As a developer, I can give a Task a title and retrieve it.
# Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.
class Task 
  def set_title(title)
    @title = title
  end

  def set_description(description)
    @description = description
  end

  def set_is_complete (complete)
    @complete = complete
  end

  def get_title
    @title
  end

  def get_description
    @description
  end

  def get_is_complete
    @complete
  end

  def print_task
    
    if @complete == false
      "Task is incomplete"
    elsif @complete == true
      "Task is complete!"
    else
      'Something went wrong' 
    end
  end


end

task1 = Task.new

task1.set_title('Make Dinner') 
task1.set_description('Cook raviolis')
task1.set_is_complete(false)

p task1
p task1.print_task





