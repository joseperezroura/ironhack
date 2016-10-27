class TodoList
    attr_reader (:tasks)

    def initialize
        @tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def show_tasks
    	@tasks.each do |task|
    		puts task.content
    	end
    end

    def delete_task(idnum)
    	@tasks.delete_if do |task|
    		task.id == idnum
    	end
	end

	def find_task_by_id(idnum)
        @tasks.each do |x|
        if x.id == idnum 
        
        return   x
        
        end
		
	
		end
	end
end