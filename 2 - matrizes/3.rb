mtx = []
negatives = []
puts "This program shows all the negative numbers into a given matrix!"
puts "Choose the number of lines matrix is going to have: [1-10]"
h = gets.to_i
while (h <= 0) || (h > 10)
    puts "Enter a valid number!"
    h = gets.to_i
end

puts "Choose the number of columns matrix is going to have: [1-10]"
w = gets.to_i
while (w <= 0) || (w > 10)
    puts "Enter a valid number!"
    w = gets.to_i
end

h.times { |i| 
    mtx[i] = Array.new
    puts "Enter the #{w} elements of the #{i+1} line: "
    w.times { |j|
        opt = gets.to_i
        mtx[i][j] = opt
        if opt < 0
            negatives << opt
        end
    }
}

puts "Negatives are: #{negatives}"
puts "Matrix: #{mtx}"