puts "First name?"
first_name = gets.chomp
puts "Okay, #{first_name}. What's your middle name?"
middle_name = gets.chomp
puts "#{middle_name}? Got it. One last thing..."
puts "Your last name, please."
last_name = gets.chomp
name = "#{first_name} #{middle_name} #{last_name}"
name_length = first_name.length + middle_name.length + last_name.length
name_length = name_length.to_s
puts "Your name is: #{name} - Correct? Y/N"
correct = gets.chomp

case correct
when "Y" || "y"
  puts "Great, thanks " + name + "!"
  puts "Intersting, your name has " + name_length + " characters in it."  
else
  puts "Sorry, try again."
end
