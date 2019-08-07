# pattern_a -> 4 5 を入力
line = gets.chomp.split(' ')
p line # => ["4", "5"]

# 要素をintegerにする場合
line = gets.chomp.split(' ').map(&:to_i)
p line # => [4, 5]
