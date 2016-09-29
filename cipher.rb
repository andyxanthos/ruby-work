letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
def caesar_cipher str, shift
  str.each_char do |char|
      letters.each do |letter|
        if letter == char
          char = letters[letter - shift]
        end
  end
end

caesar_cipher("What a string!", 5)
