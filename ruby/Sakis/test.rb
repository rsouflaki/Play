users = Hash.new
loop {
    puts "1.New User: "
    puts "2.Existing User: "
    puts "3.Exit: "
    selection = Integer(gets.chomp)
		if selection == 3
		    puts "Goodbye"
		    break
		elsif selection == 1
		    puts "Give Username: "
		    user_name = gets.chomp
		    puts "Give the Password: "
		    pass_word = gets.chomp
		    users[user_name] = pass_word
		    puts "Welcome #{user_name}"
		elsif selection == 2
		    puts "Give Username: "
		    user_name = gets.chomp
		    puts "Give the Password: "
		    pass_word = gets.chomp
	   
		    users.each { |key, value|
		        if (user_name == key) && (pass_word == value)
		            puts "Welcome #{user_name}"
		        else
		            puts "Invalid Input"
		        end
		    }
		else
		    puts "Invalid Input"
		end
}
