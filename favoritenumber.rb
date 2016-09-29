puts "What's your favorite number? Huh? What is it?"
favorite = gets.chomp
favorite = favorite.to_i

if favorite > 0
  puts "Really, you like #{favorite}?"
else
  puts "That\'s not a number, you idiot."
end
