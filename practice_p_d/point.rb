number = gets.to_i

points = 0
number.times do
  info = gets.split(' ')
  points +=
    if info[0].include?('3')
      (info[1].to_i * 0.03).floor
    elsif info[0].include?('5')
      (info[1].to_i * 0.05).floor
    else
      (info[1].to_i * 0.01).floor
    end
end

puts points
