# The front tires of a car should both have the same pressure. 
# Also, the rear tires of a car should both have the same pressure (but not neccessarily the same pressure as the front tires.) 
# Write a program that accepts the pressure of the four tires and writes a message that says if the inflation is OK or not.
# Its not enough that the pressures are the same in the tires, but the pressures must also be within range. Modify the program in exercise 1 so that it also checks that each tire has a pressure between 35 and 45.

# Right front pressure: 32
# Warning: pressure is out of range

# Left front pressure: 32
# Warning: pressure is out of range

# Right rear pressure: 42
# Left rear pressure: 42

# Inflation is BAD

# If there have been any warnings, write out a final error message.

# Right front pressure: 38
# Left front pressure: 38
# Right rear pressure: 42
# Left rear pressure: 42

# Inflation is OK

puts "Enter the pressure of the right front tire: "
rfp = gets.chomp.to_f
puts "Enter the pressure of the left front tire: "
lfp = gets.chomp.to_f
puts "Enter the pressure of the right rear tire: "
rrp = gets.chomp.to_f
puts "Enter the pressure of the left rear tire: "
lrp = gets.chomp.to_f


@warning = false

def check(pressure)
	if pressure < 35 || pressure > 45
		puts "Warning: pressure is out of range"
		@warning = true
	end
end

puts "Right front pressure: #{rfp}"
check(rfp)

puts "Left front pressure: #{lfp}"
check(lfp)

puts "Right rear pressure: #{rrp}"
check(rrp)

puts "Left rear pressure: #{lrp}"
check(lrp)

if (rfp == lfp && rrp == lrp) && (@warning == false)
	puts "Inflation is OK"
else
	puts "Inflation is bad"
end
