number_of_words = gets.to_i

number_of_words.times do
  word = gets.chomp.to_s
  if word.end_with?('s', 'sh', 'ch', 'o', 'x')
    puts word + 'es'
  elsif word.end_with?('f')
    puts word.chop + 'ves'
  elsif word.end_with?('fe')
    word.slice!(-2, 2)
    puts word + 'ves'
  elsif word.end_with?('y') && !'aiueo'.include?(word[-2])
    puts word.chop + 'ies'
  else
    puts word + 's'
  end
end
