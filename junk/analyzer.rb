def name_analyzer
    puts "Enter your first name"
    first = gets.chomp
    puts "Enter your last name"
    last = gets.chomp
    name_reverse = (first+' '+last).reverse
    name_length = first.length + last.length
    puts "Your full name is #{first} #{last}"
    puts "Your full name backwards is #{name_reverse}"
    puts "Your name has length: #{name_length}"
end

name_analyzer