continue = ""
while (continue != "n") && (continue != "N")
    names = []
    students = []
    data = []

    puts "This program organizes an school table for you!"
    opt = 0
    loop do
        puts "
        --------------MENU--------------
        |1|-| Register Student         |
        |2|-| Calculate Average Score  |
        |3|-| Exit                     |
        --------------------------------
        "
        puts "Choose an option"
        opt = gets.to_i
        case opt
            when 1
                puts "Enter the student name:"
                data[0] = gets.chop
                puts "The first score: "
                data[1] = gets.to_f
                puts "Now the last score: "
                data[2] = gets.to_f
                students << {
                    :name => data[0],
                    :score1 => data[1],
                    :score2 => data[2]
                }
                puts "Student successfully registered!"
            when 2
                if students.length < 1
                    puts "Register at least 1 student!"
                else
                    puts "Which student are going to have it's average score calculated?"
                    students.each_with_index {|student, i|
                        puts "#{i+1} - Student: #{student[:name]}, Scores: #{student[:score1]}, #{student[:score2]}"
                    }
                    opt = gets.to_i
                    opt = opt-1
                    puts "The average score of #{students[opt][:name]} is #{(students[opt][:score1] + students[opt][:score2])/2}"
                end
        end

        opt = gets.to_i
        break if opt == 3
    end

    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end