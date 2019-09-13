info = gets.split(' ').map(&:to_i)
number_of_candidate = info[0]
number_of_voters = info[1]
number_of_speeches = info[2]

support_status = []
support_status << number_of_voters

number_of_candidate.times do
  support_status << 0
end

number_of_speeches.times do
  num = gets.to_i
  count = 0
  speaker = 0
  support_status.each_with_index do |ppl, i|
    if i == num
      speaker = i
    elsif i != num && ppl >= 1
      ppl -= 1
      count += 1
      support_status[i] = ppl
    end
  end
  support_status[speaker] += count
end

support_status.shift()
max = support_status.max

result = support_status.map.with_index { |e, i| e == max ? i + 1 : nil }.compact

puts result
