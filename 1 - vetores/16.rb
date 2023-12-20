continue = ""
while (continue != "n") && (continue != "N")
    students = []
    data = []
    puts "This program allows you to get information about students given a list of them!"
    puts "How many students are we going to have?"
    qnt = gets.to_i

    qnt.times { |i|
        puts "The name of the #{i+1} student: "
        data[0] = gets.chop
        puts "Average score: "
        data[1] = gets.to_f
        students[i] = {
            :name => data[0],
            :score => data[1]
        }
    }

    opt = 0
    loop do
        puts "
            ---------MENU---------
            |1|-| Student Scores |
            |2|-| Exit           |
            ----------------------
        "
        opt = gets.to_i
        if opt == 1
            students.each { |student|
                puts "Name: #{student[:name]}"
                puts "Average Score: #{student[:score]}"
                puts "\n"
            }            
        end

        break if opt == 2
    end

    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end