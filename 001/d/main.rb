num = gets.chomp.to_i

records = []
num.times do
  records << gets.chomp.split('-').map.with_index do |time_s, i|
    time = time_s.to_i
    remainder = time % 5

    if remainder.nonzero?
      time = i.zero? ? time - remainder : time + (5 - remainder)
    end
    time += 40 if time % 100 == 60

    time
  end
end

result = []
records.uniq.sort.each do |record|
  current = result.last
  if current.nil?
    result << record.dup
  else
    if current[1] < record[0]
      result << record.dup
    elsif record[0] <= current[1] && current[1] < record[1]
      current[1] = record[1]
    end
  end
end

result.each do |data|
  puts "#{sprintf('%04d', data[0])}-#{sprintf('%04d', data[1])}"
end