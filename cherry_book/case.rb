# 30

data = gets.split(" ").map(&:to_f)
height = (data[0].rationalize * 0.01r).to_f
weight = (data[1])
bmi = (weight / (height**2)).floor(1)

judgement =
  case bmi
  when 0.0..18.4
    '低体重'
  when 18.5..24.9
    '普通体重'
  when 25.0..29.9
    '肥満（１度）'
  when 30.0..34.9
    '肥満（２度）'
  when 35.0..39.9
    '肥満（３度）'
  else
    '肥満（４度）'
  end

puts "BMI:#{bmi}"
puts "判定:#{judgement}"
