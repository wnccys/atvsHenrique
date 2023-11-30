mtxA = %w[]
mtxB = %w[]
mtxNew = %w[]
puts "This program generates other matrix from the sum of each element from given matrices"
puts "Choose the number of lines the 2 matrix is going to have: [1-10]"
h = gets.to_i
while (h <= 0) || (h > 10)
    puts "Enter a valid number!"
    h = gets.to_i
end

puts "Choose the number of columns the 2 matrix is going to have: [1-10]"
w = gets.to_i
while (w <= 0) || (w > 10)
    puts "Enter a valid number!"
    w = gets.to_i
end

h.times { |i|
    mtxA[i] = Array.new
    puts "Select the #{w} elements from Matrix A #{i+1} line: "

    w.times { |j|
        opt = gets.to_i
        mtxA[i][j] = opt
    }
}

h.times { |i|
    mtxB[i] = Array.new
    puts "Select the #{w} elements from Matrix B #{i+1} line: "

    w.times { |j|
        opt = gets.to_i
        mtxB[i][j] = opt
    }
}

h.times { |i|
    mtxNew[i] = Array.new
    w.times { |j|
        mtxNew[i][j] = mtxA[i][j] + mtxB[i][j]
    }
}

puts "The new matrix is: #{mtxNew}"