def cost(l, r, init)
  l_i = l - init
  r_i = r - init
  if l < init && init < r
    l_cost = (l_i...0).inject(&:+).abs
    r_cost = (1..r_i).inject(&:+).abs
    l_cost + r_cost
  else
    (l_i..r_i).inject(&:+).abs
  end
end

r, g, b = gets.chomp.split.map(&:to_i)

ans = Float::INFINITY
(-450..150).each do |pos|
  move_cost = 0

  rl = pos
  rr = pos + r - 1
  move_cost += cost(rl, rr, -100)

  gl = rr + 1
  g2 = g / 2
  gl = -g2 if gl < -g2
  gr = gl + g - 1
  move_cost += cost(gl, gr, 0)

  bl = gr + 1
  b2 = b / 2
  bl = 100 - b2 if bl < (100 - b2)
  br = bl + b - 1
  move_cost += cost(bl, br, 100)

  # p "rl:#{rl}, rr:#{rr}, gl:#{gl}, gr:#{gr}, bl:#{bl}, br:#{br} => #{move_cost}"
  ans = move_cost if move_cost < ans
end

puts ans