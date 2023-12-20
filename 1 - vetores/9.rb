def sortArray(arr, limit) 
    for i in 0..limit-1 
        for j in 0..limit-1
            if arr[i] > arr[j]
                temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            end
        end
    end
    arr
end
puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
continue = ""

while (continue != "n") && (continue != "N")
    arr = []
    puts "This program re-order descreasing the values from a array!"
    puts "How many number is it going to have?"
    limit = gets.to_i

    for i in 0..limit-1
        puts "Choose the #{i+1} number of the array: "
        arr[i] = gets.to_i
    end

    arr = sortArray(arr, limit)
    puts "The sorted array is: #{arr}!"
    puts "\n\n\n\n\n\n"
    puts "Do you want to continue? [S/N]"
    continue = gets.chop
end