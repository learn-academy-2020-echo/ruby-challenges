require 'rspec'
require_relative 'task_list'

# Story: As a developer, I can create a Task.

describe 'Task' do
  it 'has to be real' do
    expect {Task.new}.to_not raise_error
  end

# Story: As a developer, I can give a Task a title and retrieve it.

it 'has a title' do
  my_task = Task.new
  my_task.title = 'make dinner'
  expect(my_task.title).to eq 'make dinner'
end


# Story: As a developer, I can give a Task a description and retrieve it.

it 'has a description' do
  my_task = Task.new
  my_task.description = 'make ravioli and bread'
  expect(my_task.description).to eq 'make ravioli and bread'
end

# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.

it 'can be marked done' do
  my_task = Task.new
  expect(my_task.status).to eq 'in progress'
  my_task2 = Task.new 'complete'
  expect(my_task2.status).to eq 'complete'
end

# Story: As a developer, when I print a Task that is done, its status is shown.
it 'can print status if task complete' do
  my_task = Task.new
  my_task.title = 'make dinner'
  my_task.status = 'complete'
  expect(my_task.print_task).to eq "The make dinner task is complete"
end

it 'can task and description if in progress' do
  my_task = Task.new
  my_task.title = 'make dinner'
  # my_task.status = 'in progress'
  my_task.description = 'make ravioli and bread'
  expect(my_task.print_task).to eq "make dinner: make ravioli and bread"
end

end

# Story: As a developer, I can add all of my Tasks to a TaskList.
# Story: As a developer with a TaskList, I can print the completed items.
# Story: As a developer with a TaskList, I can print the incomplete items.