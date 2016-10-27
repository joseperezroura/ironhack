class Task
    attr_reader(:content, :id, :completed, :created_at, :updated_at)

    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @created_at = Time.now
        @updated_at = nil
    end

    def completed?
    	return @completed
    end

    def complete!
    	@complete = true
    end

    def make_incomplete!
    	@complete = false
    end

    def created_at
        @created_at
    end

    def update_content!(new_content)
        @updated_at = Time.now
        @content = new_content
    end

end