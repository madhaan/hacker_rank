  require 'matrix'

# matrix = Matrix[ [11,2,4],[4,5,6], [10,8,-12] ]
# diagonal_1 = []
# diagonal_2 = []
# size = matrix.row_size - 1
# matrix.row_vectors.each_with_index do |row, index|
  # diagonal_1 << row[index]
  # diagonal_2 << row[size - index]
# end
# puts "#{diagonal_1}"
# puts "#{diagonal_2}" 



t = gets.to_i
inp = []
(0...t).each do |i|
  lis = gets.strip.split(" ")
  inp << lis
end
m = Matrix.rows(m.to_a << )

diagonal_1 = []
diagonal_2 = []
size = matrix.row_size - 1
matrix.row_vectors.each_with_index do |row, index|
  diagonal_1 << row[index]
  diagonal_2 << row[size - index]
end
puts "#{diagonal_1}"
puts "#{diagonal_2}" 

















