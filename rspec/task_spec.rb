require 'rspec'
require_relative 'task'
require_relative 'list'
require 'date'


# Story: As a developer, I can create a Task.
describe 'Task' do
    it 'has to be real' do
        expect { Task.new }.to_not raise_error
    end
# Story: As a developer, I can give a Task a title and retrieve it.
    it 'has to be a new task' do
        myTask = Task.new
        myTask.title = "Catch-22"
    end
# # Story: As a developer, I can give a Task a description and retrieve it.
    it 'has description that can be retrieved' do
        myTask = Task.new
        expect(myTask.des).to eq 'chores' 
    end
# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
    it 'mark a task done, should have in progress' do
        myTask = Task.new
        expect(myTask.done).to eq 'in progress'
    end
# Story: As a developer, when I print a Task that is done, its status is shown.
    it 'change task from in progress to done' do
        myTask = Task.new
        expect( myTask.task_done ).to eq 'done'
    end
# Story: As a developer, I can add all of my Tasks to a TaskList.
    it 'add all of my tasks to a TaskList' do
        list = List.new
        myTask1 = Task.new
        myTask2 = Task.new
        list.addTask myTask1
        list.addTask myTask2
        expect(list.arr).not_to be_empty
    end
# Story: As a developer with a TaskList, I can print the completed items.
# Story: As a developer with a TaskList, I can print the incomplete items.
    it 'print completed items inside of TaskList array' do
        list = List.new
        myTask1 = Task.new
        myTask2 = Task.new
        myTask1.task_done
        list.addTask myTask1
        list.addTask myTask2
        expect(list.arr).not_to be_empty   
        expect(list.arr2).not_to be_empty 
    end  
    it 'print the date of the task' do
        myTask1 = Task.new
        expect(myTask1.date).to eq Date.today 
    end
end

# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.
#date parser, 


# Story: As a developer with a TaskList, I can list all the not completed items that are due today.

# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.

# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.