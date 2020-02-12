s, t = gets.chomp.split
a, b = gets.chomp.split.map(&:to_i)
u = gets.chomp

case u
when s then a -= 1
when t then b -= 1
end

puts "#{a} #{b}"