items = []
puts "Enter items to be alphabetized."
item = gets.chomp

while item != ""
  items.push(item)
  item = gets.chomp
end

if item == ""
  items.sort!
  puts "Here is what you entered in A-Z order..."
  puts items
end
