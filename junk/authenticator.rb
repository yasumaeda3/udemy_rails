users = [
    {username: 'person1', password:'pass1'},
    {username: 'person2', password:'pass2'},
    {username: 'person3', password:'pass3'},
]

def authenticator
    users = [
        {username: 'person1', password:'pass1'},
        {username: 'person2', password:'pass2'},
        {username: 'person3', password:'pass3'},
    ]    
    user_exists_bool = false
    while user_exists_bool == false
        puts "enter username"
        user_input = gets.chomp
        users.each {|pair| user_exists_bool = user_exists_bool||(pair[:username]==user_input)}
        if user_exists_bool == false
            puts "user does not exist"
        end
    end

    user_login = {}
    users.each do |pair|
        if pair[:username] == user_input
            user_login = pair
        end
    end
    
    password_correct_bool = false
    count = 0
    while password_correct_bool == false && count<3
        puts "enter password"
        pass = gets.chomp
        password_correct_bool = password_correct_bool || (user_login[:password] == pass)
        if password_correct_bool == true
            puts "authenticated"
        else
            puts "try again"
            count = count+1
        end
    end
    puts "get out crook" 
end

    # i = 0
    # while i < 5
        
    #     i ++ 
    # end

authenticator