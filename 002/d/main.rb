n, m = gets.split.map(&:to_i)
 
if m.zero?
  puts 1
  exit
end

relations = Hash.new { |h, k| h[k] = [k] }
m.times do
  x, y = gets.split.map(&:to_i)
  relations[x] << y
  relations[y] << x
end
 
n.downto(1) do |i|
  [*1..n].combination(i) do |c|
    if c.all? { |p| c & relations[p] == c }
      puts i
      exit
    end
  end
end