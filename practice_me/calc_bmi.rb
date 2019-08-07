require 'bigdecimal'

data = gets.split(" ").map(&:to_f)
height = BigDecimal(data[0].to_s) * BigDecimal("0.01")
weight = BigDecimal(data[1].to_s)

bmi = (weight / (height ** 2)).floor(1).to_f

judgement = if bmi < 18.5
              '低体重'
            elsif bmi < 25.0
              '普通体重'
            elsif bmi < 30.0
              '肥満（１度）'
            elsif bmi < 35.0
              '肥満（２度）'
            elsif bmi < 40.0
              '肥満（３度）'
            else
              '肥満（４度）'
            end

puts "BMI:#{bmi}"
puts "判定:#{judgement}"
