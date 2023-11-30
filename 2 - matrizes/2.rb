mtx = []
sums = []
puts "This program sums all elements in line of a given matrix!"
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

for i in 0..h-1
    sums[i] = 0
    mtx[i] = Array.new(w)
    puts "The #{w} elements of the line #{i+1}: "
    w.times { |n| 
    mtx[i][n] = gets.to_i 
    sums[i] += mtx[i][n]
    }
end

sums.length.times { |i| puts "#{i+1} Sum: #{sums[i]}" }