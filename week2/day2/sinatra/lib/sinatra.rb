class Task
    
    attr_reader :content, :id
    
    @@current_id = 1
    
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @make_incomplete = true
    
    end  

    def completed?

    @completed  

	end

	def completed!

    @completed = true

	end

	def make_incomplete?

	@make_incomplete = true
	else
		false

	end

end