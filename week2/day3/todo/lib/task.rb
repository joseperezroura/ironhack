class Task
    attr_reader(:content, :id, :completed, :created_at)

    @@current_id = 1

    def initialize(content)
        @content = content
        @completed = false
        @created_at = Time.now
        @id = @@current_id
        @@current_id += 1
      
    end

    def completed?
    	return @completed
    end

    def complete!
    	@completed = true
    end

    def make_incomplete!
    	@complete = false
    end

    def make_delete

        @content = nil 

        @completed = nil

    end

    # def created_at
    #     @created_at
    # end

    # def update_content!(new_content)
    #     @updated_at = Time.now
    #     @content = new_content
    # end

end