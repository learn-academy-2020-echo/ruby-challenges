#written
class Task
  attr_accessor :title, :status
  def initialize status='In Progress'
    @title = title
    @status = status
  end

  def change_status
    @status = 'Done!'
  end

  def show_status
    p "status of this task is #{ @status }"
  end
end

# task1 = Task.new("CodeChallenges", "Done!")
# task2 = Task.new("HoneyDoList", "In Progress")
# task3 = Task.new("GTL", "Done!")

class Tasklist
  def initialize
    @task_list_array = []
  end
    def task_lister task
      @task_list_array << task

    end
end
