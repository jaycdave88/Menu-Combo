class Menu
	attr_reader :dishes, :target_total

	def initialize(target_total, dishes)
		@target_total = target_total
		@dishes = dishes
	end

end