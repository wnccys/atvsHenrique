continue = ""
while (continue != "n") && (continue != "N")
    stock = []
    data = %w[]
    puts "This program organizes the products inside a stock!"
    puts "How many products are you going to enter?"
    qnt = gets.to_i
    qnt.times {|i|
        puts "The #{i+1} product name is:"
        data[0] = gets.chop
        puts "Value of the #{i+1} product is:"
        data[1] = gets.to_f
        puts "The quantity of the #{i+1} product is:"
        data[2] = gets.to_i
        puts "\n\n"
        stock[i] = {
            :name => data[0],
            :value => data[1],
            :quantity => data[2]
        }
    }
    
    # i = 0
    stock.each_with_index {|product, i|
        puts "The #{i+1} product name is: #{stock[i][:name]}"
        puts "The #{i+1} product value is: #{stock[i][:value]}"
        puts "The #{i+1} product quantity is: #{stock[i][:quantity]}"
        puts "\n\n"
        # i+=1
    }

    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end