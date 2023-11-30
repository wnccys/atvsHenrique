mtx = []
greatest = []
puts "This program shows the greatest number in each line of a given matrix!"
puts "Choose the number of lines and columns the square matrix is going to have: [1-10]"
h = gets.to_i
while (h <= 0) || (h > 10)
    puts "Enter a valid number!"
    h = gets.to_i
end

h.times { |i|
    mtx[i] = Array.new
    puts "Choose the #{h} numbers of #{i+1} line of matrix"
    h.times { |j|
        opt = gets.to_i
        mtx[i][j] = opt
    }
    greatest << mtx[i].max
}

puts "The greatest elements are: #{greatest}"