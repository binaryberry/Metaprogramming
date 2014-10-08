class Student

	attr_reader :awards
	
	def initialize
		@awards = []
	end
	
	def award name
		@awards << name 
	end


	def method_missing has_badge, badge_name
		self.class.send(:define_method, has_badge){true}
		# self.send(name)
	end

end