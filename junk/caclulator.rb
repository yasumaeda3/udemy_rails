def ask_2nums
    puts "enter first num"
    num1 = gets.chomp
    puts "enter second num"
    num2 = gets.chomp
    return num1.to_i, num2.to_i
end

def multiply
    num1, num2 = ask_2nums
    answer = num1*num2
    puts "your answer is #{answer}"
end


def calculator
    puts "What function would you like to use"
    answer = gets.chomp
    if answer == "multiplication"
        multiply
    end
end

calculator