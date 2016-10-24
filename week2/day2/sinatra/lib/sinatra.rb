class Task
    
    attr_reader :content, :id
    
    @@current_id = 1
    
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
    
    end  

    def completed?

    @completed = true  

	end

end