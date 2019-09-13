winning_number = gets.split(' ')
number_of_lotteries = gets.to_i

number_of_lotteries.times do
  count = 0
  ary = gets.split(' ')
  ary.each do |i|
    count += 1 if winning_number.include?(i)
  end
  puts count
end
