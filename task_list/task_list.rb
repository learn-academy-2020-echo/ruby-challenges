class TaskList
  attr_accessor :task_collection
  def initialize 
    @task_collection = []
  end
  def add_task task 
    @task_collection << task
  end
end
