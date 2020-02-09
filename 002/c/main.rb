x1, y1, x2, y2, x3, y3 = gets.chomp.split(' ').map(&:to_i)

# 三角形の面積の出し方
# |(x1 - x3)(y2 - y3) - (x2 - x3)(y1 - y3)| / 2
puts (((x1 - x3) * (y2 - y3) - (x2 - x3) * (y1 - y3)) / 2.0).round(1).abs