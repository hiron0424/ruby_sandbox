input = gets.chomp.split(" ")

button_a = input[0].to_i
button_b = input[1].to_i

position = 0 + button_a - button_b

puts position