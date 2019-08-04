# frozen_string_literal: true

# c067

info = gets.chomp.split(' ').map(&:to_i)
input_lines = info[0]
number = info[1]

binary_number = number.to_s(2)

input_lines.times do
  num = gets.to_i
  puts binary_number[-num]
end
