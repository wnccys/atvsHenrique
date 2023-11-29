puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
puts "Enter the square matrix length: [1-10]"
mLength = gets.to_i-1
while (mLength <= 0) || (mLength > 10)
    puts "Enter a valid length!"
    mLength = gets.to_i-1
end

negatives = []
diagonal = []
matrix = []

for i in 0..mLength
    for j in 0..mLength
        puts "Choose the Element[#{i},#{j}]"
        opt = gets.to_i
        if opt < 0
            negatives << opt
        elsif i == j
            diagonal << opt
        end
    end
end

puts "Negative Numbers: #{negatives || "None"}"
puts "Diagonals: #{diagonal}"