require 'rspec'
require_relative 'task.rb'


describe 'Task' do

    it 'has to be real' do
      expect{ Task.new }.to_not raise_error
    end

    it 'has a title' do
      my_task = Task.new
    #  expect(my_task.title).to eq "Groceries"
     my_task.title = "Groceries"
        expect(my_task.title).to eq "Groceries"
    end

    it 'has a description' do
      my_task = Task.new
    my_task.description = 'get the food you need'
        expect(my_task.description).to eq 'get the food you need'
    end

    it 'can be mark done' do
      my_task = Task.new
        expect{ my_task.update "done" }.to change{ my_task.status }.from("in progress").to('done')
    end


    it 'is completed' do
      my_task = Task.new
      my_task.status = done
        expect{ my_task.print_status "done"}.to change{ my_task.}

    end
end