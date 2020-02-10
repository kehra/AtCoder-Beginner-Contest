matrix = []

4.times do
  matrix << gets.chomp.split
end

matrix.reverse.map(&:reverse).each do |row|
  puts row.join(' ')
end