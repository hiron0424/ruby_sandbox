# frozen_string_literal: true

# 019
# Q
# N_1
# ...
# N_Q
# 1 <= Q <= 50, 2 <= N_i <= 1000(i=1,2,..Q)

require 'prime'

def sum_divisors(number)
  number.prime_division.map { |p, e| (p**(e + 1) - 1) / (p - 1) }.inject(:*)
end

number_of_data = gets.to_i

number_of_data.times do
  num = gets.to_i
  sum = sum_divisors(num) - num
  judgement = if num == sum
                'perfect'
              elsif (num - sum).abs == 1
                'nearly'
              else
                'neither'
              end
  puts judgement
end
