class Dish
	attr_reader :cost, :name

	def initialize(name,cost)
		@name = name
		@cost = cost
	end

	def to_s 
		"#{@name}: $#{@cost}"
	end

end