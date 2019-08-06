# frozen_string_literal: true

# 051

data = gets.split(' ').map(&:to_i)

ary = data.permutation(4).to_a
final_ary = []
ary.each do |a|
  num_a = (a[0].to_s << a[1].to_s).to_i
  num_b = (a[2].to_s << a[3].to_s).to_i
  final_ary << num_a + num_b
end

puts final_ary.max
