require_relative 'fileIO.rb'

class Combinations 

	def initialize
		@count = 0 
	end

	def find_all(list_of_dishes, goal, highest =0.0, sum =0.0, result_dishes =[])
		if sum == goal
			@count = @count + 1
			puts "\n"
			puts "**Combination #{@count}:"
			puts result_dishes
			puts "\n"
		end

		return if sum > goal

		list_of_dishes.each do |dish|
			if dish.cost >= highest
				copy = []
				copy.concat result_dishes
				copy.push(dish)
				find_all(list_of_dishes, goal, dish.cost, sum + dish.cost, copy)
			end
		end
		puts "not Possible" if result_dishes == [] && @count == 0
	end

end




