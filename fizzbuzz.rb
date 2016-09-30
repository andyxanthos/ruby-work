(0..100).each do |x|
  if x % 5 == 0 && x % 3 == 0
    puts x.to_s + " fizzbuzz" unless x == 0
  elsif x % 3 == 0
    puts x.to_s + " fizz"
  elsif x % 5 == 0
    puts x.to_s + " buzz"
  else
    puts x.to_s
  end
end
