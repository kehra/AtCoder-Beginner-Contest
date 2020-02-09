s = gets.chomp
t = gets.chomp

s.size.times do |i|
  next if s[i] == t[i]
  next if s[i] == '@' && %w[a t c o d e r].include?(t[i])
  next if t[i] == '@' && %w[a t c o d e r].include?(s[i])

  puts 'You will lose'
  exit
end

puts 'You can win'