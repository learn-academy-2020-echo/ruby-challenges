class List
    attr_accessor :arr, :arr2
    def initialize
        @arr = []
        @arr2= []
    end
    def addTask task
        if task.done == 'in progress'
            @arr << task
        else
            @arr2 << task
        end
    end
end
