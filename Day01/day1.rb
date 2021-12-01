
input = File.readlines('./day1.input')
puzzle1 = 0
puzzle2 = 0
(1..(input.size - 1)).each do |outPtr|
   if input[outPtr].to_i > input[outPtr - 1].to_i
      puzzle1 += 1
   end
   if (input[outPtr].to_i + input[outPtr + 1].to_i + input[outPtr + 2].to_i) >
      (input[outPtr-1].to_i + input[outPtr].to_i + input[outPtr + 1].to_i)
      puzzle2 += 1
   end
end
puts "Day 1) Puzzle 1 answer is #{puzzle1} and Puzzle 2 answer is #{puzzle2}"

