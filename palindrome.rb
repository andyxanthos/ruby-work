class Word < String
  def palindrome?
    self.downcase == self.reverse.downcase
  end
end

r = Word.new('racecar')
puts r.palindrome?

o = Word.new('onomatopoeia')
puts o.palindrome?

m = Word.new('Malayalam')
puts m.palindrome?
