# frozen_string_literal: true

# 024

@variable1 = 0
@variable2 = 0

# don't use "set" for method name
def input_data(data)
  if data[1] == '1'
    @variable1 = data[2].to_i
  elsif data[1] == '2'
    @variable2 = data[2].to_i
  else
    puts 'error'
  end
end

def sum_up(figures)
  @variable2 = @variable1 + figures
end

def subtract(figures)
  @variable2 = @variable1 - figures
end

number_of_order = gets.to_i

number_of_order.times do
  order = gets.split(' ')
  if order[0] == 'SET'
    input_data(order)
  elsif order[0] == 'ADD'
    sum_up(order[1].to_i)
  elsif order[0] == 'SUB'
    subtract(order[1].to_i)
  end
end

puts "#{@variable1} #{@variable2}"
