def get_angle(degree)
  degree_f = (degree / 10.0).round(2)
  
  if 11.25 <= degree_f && degree_f < 33.75
    'NNE'
  elsif 33.75 <= degree_f && degree_f < 56.25
    'NE'
  elsif 56.25 <= degree_f && degree_f < 78.75
    'ENE'
  elsif 78.75 <= degree_f && degree_f < 101.25
    'E'
  elsif 101.25 <= degree_f && degree_f < 123.75
    'ESE'
  elsif 123.75 <= degree_f && degree_f < 146.25
    'SE'
  elsif 146.25 <= degree_f && degree_f < 168.75
    'SSE'
  elsif 168.75 <= degree_f && degree_f < 191.25
    'S'
  elsif 191.25 <= degree_f && degree_f < 213.75
    'SSW'
  elsif 213.75 <= degree_f && degree_f < 236.25
    'SW'
  elsif 236.25 <= degree_f && degree_f < 258.75
    'WSW'
  elsif 258.75 <= degree_f && degree_f < 281.25
    'W'
  elsif 281.25 <= degree_f && degree_f < 303.75
    'WNW'
  elsif 303.75 <= degree_f && degree_f < 326.25
    'NW'
  elsif 326.25 <= degree_f && degree_f < 348.75
    'NNW'
  else
    'N'
  end
end

def get_power(speed_per_min)
  speed_per_sec = (speed_per_min / 60.0).round(1)

  if speed_per_sec <= 0.2
    0
  elsif 0.3 <= speed_per_sec && speed_per_sec <= 1.5
    1
  elsif 1.6 <= speed_per_sec && speed_per_sec <= 3.3
    2
  elsif 3.4 <= speed_per_sec && speed_per_sec <= 5.4
    3
  elsif 5.5 <= speed_per_sec && speed_per_sec <= 7.9
    4
  elsif 8.0 <= speed_per_sec && speed_per_sec <= 10.7
    5
  elsif 10.8 <= speed_per_sec && speed_per_sec <= 13.8
    6
  elsif 13.9 <= speed_per_sec && speed_per_sec <= 17.1
    7
  elsif 17.2 <= speed_per_sec && speed_per_sec <= 20.7
    8
  elsif 20.8 <= speed_per_sec && speed_per_sec <= 24.4
    9
  elsif 24.5 <= speed_per_sec && speed_per_sec <= 28.4
    10
  elsif 28.5 <= speed_per_sec && speed_per_sec <= 32.6
    11
  else
    12
  end
end

degree, speed_per_min = gets.chomp.split.map(&:to_i)

power = get_power(speed_per_min)
if power.zero?
  puts "C 0"
else
  puts "#{get_angle(degree)} #{power}"
end