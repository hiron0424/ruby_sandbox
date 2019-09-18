info = gets.chomp.split(' ').map(&:to_i)
line_info1 = gets.chomp.split(' ').map(&:to_i)
line_info2 = gets.chomp.split(' ').map(&:to_i)

vertical_diff1 = line_info2[0] - line_info1[0]
vertical_diff2 = line_info2[1] - line_info1[1]

num1 = line_info1[0]
num2 = line_info1[1]
num_diff = num2 - num1

info[0].times do
  line = []
  info[1].times do
    line << num1
    num1 += num_diff
  end
  num1 = line[0] + vertical_diff1
  num2 = line[1] + vertical_diff2
  num_diff = num2 - num1
  puts line.join(' ')
end
