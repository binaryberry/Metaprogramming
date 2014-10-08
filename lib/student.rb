class Student

	attr_reader :awards
	
	def initialize
		@awards = []
	end
	
	def award name
		@awards << name 
    self.class.send(:define_method,"has_#{name}?") { @awards.include? name }
	end

  def method_missing name, *args
    return false if name.match(/^has_.+?\?$/)
    super
  end

end
