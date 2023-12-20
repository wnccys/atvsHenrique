continue = ""
while (continue != "n") && (continue != "N")
    temps = []
    puts "\n\n\n\n\n\n\n\n"
    puts "This program calculates to you the highest and the lowest centigrade degree!"
    months = %w[ january february march april may june july august september october november december]
    12.times {|i|
        puts "The #{months[i]} teperature is:"
        temps[i] = gets.to_f
    }
    puts "\n\n\n\n\n\n\n"
    puts "The lower average temperature was: #{temps.min}"
    puts "The highes average temperature was #{temps.max}"

    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end