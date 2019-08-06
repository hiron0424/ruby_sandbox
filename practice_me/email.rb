email = gets.chomp.to_s

judgement = email.match(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)

if judgement.nil?
  puts '不適切なメールアドレスです'
else
  puts '適切なメールアドレスです'
end
