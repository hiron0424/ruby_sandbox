number = gets.to_i
string = gets.chomp.split('')

word = []
string.each_with_index do |s, i|
  num = s.ord - 65
  num2 =
    if i.even?
      (num - number) % 26
    else
      (num + number) % 26
    end
  word << (num2 + 65).chr
end

puts word.join('')
