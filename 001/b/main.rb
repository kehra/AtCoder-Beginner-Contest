dist = gets.chomp.to_i / 1000.0

puts(
  if dist < 0.1
    '00'
  elsif 0.1 <= dist && dist <= 5
    printf('%02d', dist * 10)
  elsif 6 <= dist && dist <= 30
    printf('%02d', dist + 50)
  elsif 35 <= dist && dist <= 70
    printf('%02d', ((dist - 30)/ 5).to_i + 80)
  else
    '89'
  end
)