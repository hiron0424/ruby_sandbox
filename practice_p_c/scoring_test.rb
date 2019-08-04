input_number = gets.chomp.split(" ")
number_of_students = input_number[0].to_i
passing_score = input_number[1].to_i

successful_candidate = []
rejected_person = []

student_number = 1
number_of_students.times do
  info_of_student = gets.chomp.split(" ")
  score = info_of_student[0].to_i
  number_of_absences = info_of_student[1].to_i
  result = score - (number_of_absences * 5)
  final_result = result < 0 ? 0 : result
  if final_result >= passing_score
    successful_candidate << student_number
  else
    rejected_person << student_number
  end
  student_number += 1
end

successful_candidate.each {|stu| puts stu }
