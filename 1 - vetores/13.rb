continue = ""
while (continue != "n") && (continue != "N")
    puts "\n\n\n\n\n\n\n\n"
    numbers = []
    puts "This program lets you see given numbers in a reverse order!"
    puts "How many number are yours going to enter?"
    qnt = gets.to_i
    qnt.times { |i| 
        puts "The #{i+1} number is:"
        numbers << gets.to_i
    }

    puts "The numbers in reverse order is: #{numbers.reverse}."
    
    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end