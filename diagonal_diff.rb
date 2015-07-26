  require 'matrix'
module HackerRank
  class Matrix
    def initialize(matrix)
      @matrix = matrix 
    end

    def diagonals()
      diagonal_1 = []
      diagonal_2 = []
      size = @matrix.row_size - 1
      @matrix.row_vectors.each_with_index do |row, index|
        diagonal_1 << row[index]
        diagonal_2 << row[size - index]
      end
      diagonals = [diagonal_1, diagonal_2]
      diagonals
    end

    def diagonal_difference
      diagonals = diagonals()
      calculator = Calculator.new
      sum_of_diagonal_1 = calculator.add(diagonals[0])
      sum_of_diagonal_2 = calculator.add(diagonals[1])
      sum_of_diagonal_1 - sum_of_diagonal_2
    end
    
  end
end


class Calculator
  def add(input)
    sum = 0
    input.each do |x|
       sum += x
    end
    sum
  end
end

class InputParser
  def parser
    matrices = []
    puts "enter n numbers of matrix"
    n = gets.to_i
    n.times do |x|
      matrices << read_matrix
    end
    matrices
  end

  def read_matrix 
    n = gets.to_i
    rows = []
    n.times do |i|
      rows << gets.strip.split(' ').map(&:to_i)
    end
    Matrix.rows(rows)
  end
end

matrices = InputParser.new.parser
matrices.each do |matrix|
  matrix = HackerRank::Matrix.new(matrix)
  puts matrix.diagonal_difference
end



























