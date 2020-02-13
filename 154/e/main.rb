n = gets.chomp
k = gets.chomp.to_i

size = n.size

dp = Array.new(size + 1) { Array.new(2) { Array.new(k + 2, 0)} }
dp[0][0][0] = 1

size.times do |i|
  2.times do |s|
    (k + 1).times do |j|
      l = s.zero? ? n[i].to_i : 9
      (l + 1).times do |d|
        dp[i+1][!s.zero? || d < l ? 1 : 0][d.zero? ? j : j + 1] += dp[i][s][j]
      end
    end
  end
end

puts dp[size][0][k] + dp[size][1][k]