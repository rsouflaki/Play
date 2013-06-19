input = File.open('./football.dat', File::RDONLY) { |file| file.read }
array = input.lines.map(&:split)
diff = Hash.new
for i in 5..26
	unless array[i][6].to_i.nil? || array[i][6].to_i == 0 
		diff[array[i][1]] = (array[i][6].to_i - array[i][8].to_i).abs
	end
end
puts "#{diff.key(diff.values.min)} --> #{diff.values.min}"