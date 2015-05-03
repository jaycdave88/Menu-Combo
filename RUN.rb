require_relative './Code/combinations.rb'
require_relative './Code/fileIO.rb'
require_relative './Code/menu.rb'


puts "Hello!"
puts "COMMANDS: \nTo exit please, press enter 'q'"
puts "*"*32

puts "Please provide a file to check:"
file = $stdin.gets.chomp

if file != 'q'.downcase

	file_parser=FileIO.new
	menu = file_parser.read_file(file)
	if menu != nil
		combinations=Combinations.new
		combinations.find_all(menu.dishes, menu.target_total)
	end
else
	puts "Thanks! Made by Jay C. Davé "
end

