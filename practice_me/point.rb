require 'bigdecimal'

DAY_OF_5PERCENT = [1].freeze
DAY_OF_3PERCENT = [5, 15, 25].freeze
DAY_OF_2PERCENT = [3, 13, 30, 31].freeze

number_of_data = gets.to_i

total_points = 0
number_of_data.times do
  data = gets.chomp.split(' ')
  figure_of_date = data[0].split('/').map(&:to_i)[2]
  purchase_amount = data[1].to_i
  point = if DAY_OF_5PERCENT.include?(figure_of_date)
            (BigDecimal(purchase_amount.to_s) * BigDecimal('0.05')).floor
          elsif DAY_OF_3PERCENT.include?(figure_of_date)
            (BigDecimal(purchase_amount.to_s) * BigDecimal('0.03')).floor
          elsif DAY_OF_2PERCENT.include?(figure_of_date)
            (BigDecimal(purchase_amount.to_s) * BigDecimal('0.02')).floor
          else
            (BigDecimal(purchase_amount.to_s) * BigDecimal('0.01')).floor
          end
  total_points += point
end

puts "#{total_points}ポイント"
