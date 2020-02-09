n = gets.chomp.to_i

puts [*1..n].inject(0) { |sum, i| sum += (i * 10000.0 / n) }.to_i