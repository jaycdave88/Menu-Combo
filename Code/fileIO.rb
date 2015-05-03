require_relative 'dish.rb'

class FileIO

	def read_file(file)
		if !File.exist?(file)
			puts "File not found."
		else
			target_total=0.0
			dishes =[]
			File.open(file){|file| file.readlines.each_with_index{|line, index| target_total = line.chomp.sub('$','').to_f if index == 0; each_dish=line.sub("$",'').split(',');dishes << Dish.new(each_dish[0], each_dish[1].chomp.to_f) if index != 0}}
			Menu.new(target_total,dishes)
		end
	end

end


