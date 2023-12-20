continue = ""
while (continue != "n") && (continue != "N")
    names = []
    selected_names = []
    puts "This programs shows a person name starting with L or S!"
    puts "How many people will be registered at the program?"
    qnt = gets.to_i
    qnt.times { |i| 
        puts "Select the #{i+1} person: "
        names << gets.chop.downcase
    }
    names.each {
        |name|
        if (name[0] == "l") || (name[0] == "s")
            selected_names << name
        end
    }
    puts "The names that starts with L or S are: #{selected_names}"

    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end