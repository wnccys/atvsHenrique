mtx = []

puts "This program shows the greatest number in each line of a given matrix!"
puts "Choose the number of lines the square matrix is going to have: [1-10]"
h = gets.to_i
while (h <= 0) || (h > 10)
    puts "Enter a valid number!"
    h = gets.to_i
end