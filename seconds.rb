puts "How many seconds have you been alive for...?"
puts "How old are you?"
age = gets.chomp.to_i

def seconds_alive age
  days = age * 365
  hours = days * 24
  minutes = hours * 60
  seconds = minutes * 60
  puts seconds
end

seconds_alive(age)    
