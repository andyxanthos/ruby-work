puts "Maybe this is rude but... what year were you born in?"
year = gets.chomp.to_i

puts "Wow, #{year}?! So, what month?"
month = gets.chomp

puts "What day? Please enter a number."
day = gets.chomp.to_i

birthday = Time.new(year, month, day)
current_time = Time.new
age_secs = current_time - birthday
age_mins = age_secs / 60
age_hours = age_mins / 60
age_days = age_hours / 24
age = age_days / 365

puts "Here is your EXACT age in various units of measurement:"
puts "seconds: #{age_secs}"
puts "minutes: #{age_mins}"
puts "hours: #{age_hours}"
puts "days: #{age_days}"
puts "years: #{age}"
