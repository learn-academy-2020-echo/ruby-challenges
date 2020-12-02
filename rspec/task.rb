require 'date'

class Task
    attr_accessor :title, :des, :done, :date
    def initialize des='chores'
        @title = title
        @des = des
        @date = Date.today.to_s
        @done = 'in progress'
    end
    def task_done
            @done = 'done'
    end
    def todaydate
        # puts "#{@date}"
        @date
    end
end

# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

myTask1 = Task.new
p myTask1.todaydate
