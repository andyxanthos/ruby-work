total = 0

(1...1000).each do |num|
  if num % 3 == 0
    total += num
  elsif num % 5 == 0
    total += num
  elsif num % 3 == 0 && num % 5 == 0
    total -= num
  end     
end

puts total
