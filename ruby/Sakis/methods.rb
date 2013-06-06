def new_user(users_hash)
	puts "Give Username: "
	user_name = gets.chomp
	puts "Give the Password: "
	pass_word = gets.chomp
	found = false
	users_hash.each { |key, value|
        if user_name == key
            found = true
			break
		end
	}
	if found 
		puts "Username already Exists"
	else 
		users_hash[user_name] = pass_word
		puts "Welcome #{user_name}"
	end
end

def verify_user(users_hash)
    puts "Give Username: "
    user_name = gets.chomp
    puts "Give the Password: "
    pass_word = gets.chomp

    users_hash.each { |key, value|
        if (user_name == key) && (pass_word == value)
            return "Welcome #{user_name}"
			break
        else
            return "User not Found"
        end
    }
end

def show_users(users_hash)
	if users_hash.any?	
		users_hash.each { |key,value|
			puts "User:#{key}"
		}
	else
		puts "No Users"
	end
end
users = Hash.new

loop {
    puts "1.New User: "
    puts "2.Existing User: "
    puts "3.Exit: "
	puts "4.Show Existing Users: "
    selection = Integer(gets.chomp)
		if selection == 3
		    puts "Goodbye"
		    break
		elsif selection == 1
			new_user(users)
		elsif selection == 2
		    puts verify_user(users)
	    elsif selection == 4
			show_users(users)		
		else
		    puts "Invalid Input"
		end
}
