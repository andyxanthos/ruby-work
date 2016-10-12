def uniques(arr)
  result = []
  arr.each do |x|
    result << x unless result.include? x
  end
  return result
end

puts uniques([1, 5, "frog", 2, 1, 3, "frog"])
# => [1, 5, "frog", 2, 3]
