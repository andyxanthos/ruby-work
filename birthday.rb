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
age_exact = age_days / 365
age = age_exact.to_i

puts "Here is your EXACT age in various units of measurement:"
puts "seconds: #{age_secs}"
puts "minutes: #{age_mins}"
puts "hours: #{age_hours}"
puts "days: #{age_days}"
puts "years: #{age_exact}"
puts "So, you're #{age} years old."

if age >= 50
  puts "With such great age comes great wisdom."
elsif age < 50 && age >=30
  puts "You keep doing you, buddy ol' pal"
else
  puts "You've got so much more life to look forward to!"
end
