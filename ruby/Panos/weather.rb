input = File.open('./weather.dat', File::RDONLY) { |file| file.read }
array = input.lines.map{|l| l.split.map(&:to_f) }
temps = Hash.new
for i in 8..37
	temps[array[i][0]] = array[i][1] - array[i][2]
end
puts "#{temps.key(temps.values.min)} --> #{temps.values.min}"