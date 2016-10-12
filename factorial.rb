def factorial(n)
  total = 1
  (1..n).each do |x|
    total *= x
  end
  return total
end

puts factorial(5)
# => 120
