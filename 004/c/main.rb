n = gets.chomp.to_i

# 30回で1周するので、あまり分だけ処理すれば良い
n %= 30

str = '123456'

n.times do |i|
  x = i % 5
  y = i % 5 + 1

  swap = str[x]
  str[x] = str[y]
  str[y] = swap
end

puts str