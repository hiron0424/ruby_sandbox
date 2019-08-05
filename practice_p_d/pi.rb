# frozen_string_literal: true

require 'bigdecimal'

PI = 3.141592653589793

number_of_digits = gets.to_i
puts BigDecimal(PI.to_s).floor(number_of_digits).to_f
