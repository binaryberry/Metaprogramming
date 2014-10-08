class Student

	attr_reader :awards
	
	def initialize
		@awards = []
	end
	
	def award name
		@awards << name 
	end

  def method_missing name
    return true if awards.include? name.chopup 
  end

  def respond_to_missing? name, include_private = false
    return true if name.to_s.start_with? "has" 
    super
  end

end
