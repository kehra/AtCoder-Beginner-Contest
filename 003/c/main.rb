n, m = gets.chomp.split.map(&:to_i)
rates = gets.chomp.split.map(&:to_i)

sum = 0
rates.sort[(m*-1)..-1].each do |rate|
  sum = (sum + rate) / 2.0
end

puts sum.round(6)