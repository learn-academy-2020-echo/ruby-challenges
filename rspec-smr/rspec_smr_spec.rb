#test
require 'rspec'
require_relative 'rspec_smr'
# require_relative 'tasklist'

describe 'task' do
  #does the task exist? get your first win!
  it 'has to be real' do
    expect{ Task.new }.to_not raise_error
  end
  it 'has to have a title' do
    my_task = Task.new
    my_task.title = 'DANCE'
    expect(my_task.title).to eq 'DANCE'
  end
  it 'it will have status' do
    my_task = Task.new
    my_task.status = 'In Progress'
    expect(my_task.status).to eq 'In Progress'
  end
  it 'has a status that can be set to done' do
    my_task = Task.new
    expect{ my_task.change_status }.to change{ my_task.status }.from('In Progress').to('Done!')
  end
  it 'has a status that is shown when printed' do
    my_task = Task.new
    expect(my_task.show_status).to eq "status of this task is #{my_task.status}"
  # expect{ my_task.show_status }.to output("status of this task is #{ my_task.status }").to_stdout
  end

end

describe 'tasklist' do
  it 'has to be real!' do
    expect{ Tasklist.new }.to_not raise_error
  end
  # it 'has a task list that is an array' do
  #   my_tasklist = Tasklist.new
  #   expect(my_tasklist.my_tasklist_array).to be_a Array
  # end

end
