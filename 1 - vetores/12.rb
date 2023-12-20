continue = ""
while (continue != "n") && (continue != "N")
    puts "\n\n\n\n\n\n\n\n"
    checks = []
    data = []
    puts "This program allows the user to organize it's checks!"
    puts "How many checks do you want to organize?"
    qnt = gets.to_i
    puts "All Ok! you're going to enter #{qnt} checks"

    qnt.times { |i| 
        puts "Enter the #{i+1} check number:"
        data[0] = gets.to_i
        puts "Enter the check value:"
        data[1] = gets.to_f
        puts "Enter the data:"
        data[2] = gets.chop
        puts "Now the destination:"
        data[3] = gets.chop
        checks[i] = { 
            :number => data[0],
            :value => data[1],
            :data => data[2],
            :destination => data[3]
        }
    }

    i = 0
    checks.each { |check|
        puts "#{i+1} check number is: #{check[:number]}"
        puts "#{i+1} check value is: #{check[:value]}"
        puts "#{i+1} check data is: #{check[:data]}"
        puts "#{i+1} check destination is: #{check[:destination]}"
        puts "\n\n\n\n"
    }
    
    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end