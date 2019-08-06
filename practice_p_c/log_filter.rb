# frozen_string_literal: true

# 055

input_lines = gets.to_i
string_of_extraction = gets.chomp

string_of_extracted = []
input_lines.times do
  sample_string = gets.chomp
  string_of_extracted << sample_string if sample_string.include?(string_of_extraction)
end

if string_of_extracted.empty?
  puts 'None'
else
  string_of_extracted.each do |str|
    puts str
  end
end
