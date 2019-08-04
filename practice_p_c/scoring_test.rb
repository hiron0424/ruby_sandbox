# frozen_string_literal: true

require 'byebug'

def data_acquisition
  input_number = gets.chomp.split(' ')
  @number_a = input_number[0].to_i
  @number_b = input_number[1].to_i
end

data_acquisition
number_of_students = @number_a
passing_score = @number_b

successful_candidate = []
rejected_person = []

student_number = 1
number_of_students.times do
  data_acquisition
  score = @number_a
  number_of_absences = @number_b
  result = score - (number_of_absences * 5)
  final_result = result.negative? ? 0 : result
  if final_result >= passing_score
    successful_candidate << student_number
  else
    rejected_person << student_number
  end
  student_number += 1
end

successful_candidate.each { |stu| puts stu }
