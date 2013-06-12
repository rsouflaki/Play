def new_user(users_hash)
	puts "Give Username: "
	user_name = gets.chomp
    if users_hash[user_name.to_sym].nil?
	    puts "Give the Password: "
	    pass_word = gets.chomp
        users_hash[user_name.to_sym] = pass_word
	    puts "#{user_name} has been added" 
    else
		puts "User already Exists"
	end
end

def verify_user(users_hash)
    puts "Give Username: "
    user_name = gets.chomp
    puts "Give the Password: "
    pass_word = gets.chomp
    if users_hash[user_name.to_sym].nil?
        return "Invalid user"
    else
        if pass_word == users_hash[user_name.to_sym]
            return "Welcome #{user_name}"
        else
            return "Invalid Login"
        end
    end
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
    puts "1.New User"
    puts "2.Existing User"
    puts "3.Show Existing Users"
    print "9.Exit: "
    selection = Integer(gets.chomp)
	case selection
        when 9
	        puts "Goodbye"
            break
	    when 1
		    new_user(users)
	    when 2
	        puts verify_user(users)
        when 3
		    show_users(users)		
	    else
	        puts "Invalid Input"
    end
}
