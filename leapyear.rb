puts "Enter a starting year..."
start_year = gets.chomp.to_i
puts "Okay. Now an ending year..."
end_year = gets.chomp.to_i

(start_year..end_year).each do |year|
  if year % 4 == 0
    puts year unless year % 100 == 0 && year % 400 != 0
  end
end
