puts "Hi there sonny, how are ya?"
response = gets.chomp

while response != 'BYE'
  if response == response.upcase
    puts "Weeeelp, I'm just glad to see ya."
  else
    puts "YOU'RE GONNA HAVE TO SPEAK UP, SONNY"
  end

  response = gets.chomp
end     
