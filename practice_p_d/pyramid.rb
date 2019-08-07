input_num = gets.chomp.to_i

ary = [*(1..input_num)] # => [1, 2, 3, ...input_num]

puts ary.sum
