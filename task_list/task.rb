class Task
    attr_accessor :title, :description, :status
    def initialize status = 'in progress'
      @title = title
      @description = description
      @status = status
    end
  
    def print_task
     if @status == 'complete'
      "The #{title} task is #{status}"
     else
      "#{title}: #{description}"
     end
    end
  end