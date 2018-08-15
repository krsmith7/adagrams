#create data structure
all_letters = []

letters = {"A" => 9, "B" => 2, "C" => 2, "D"=> 4, "E" => 12, "F"=> 2, "G"=>3, "H"=>2, "I" => 9, "J"=>1, "K"=> 1, "L"=>4, "M"=> 2, "N"=> 6, "O"=>8, "P" => 2, "Q" => 1, "R"=>6, "S"=>4, "T"=>6, "U"=>4, "V"=>2, "W"=>2, "X"=>1, "Y"=>2, "Z"=>1}

# Fill pool of letters array with letters
letters.each do |letter, freq|
  count = 0
  until count == freq
    all_letters << letter
    count += 1
  end
end

# puts "#{all_letters}"

# Define method for creating user hand
def draw_letters(array)
  user_letters = []
  user_letters = array.sample(10)
  return user_letters
end


# puts "#{draw_letters(all_letters)}"
drawn_letters = draw_letters(all_letters)
# print "drawn letters :"
# puts "#{drawn_letters}"

# puts drawn_letters.size


#create method to confirm the word uses available letters

# def uses_available_letters?(input, letters_in_hand)
#    input_letters = input.split('')
#    input_letters.all? {|letter|
#      letters_in_hand.include?letter
#    }
#
#    # letters_in_hand.include?input_letters # => false
# end
#
#
# word = "jam"
# letters_in_hand = ["A", "A", "A", "A", "A", "M", "B", "J", "C", "O"]
# #
# #
# puts uses_available_letters?(word, drawn_letters)

# word = "JAM"
# word_letters = word.split('')
# puts "#{word_letters}"
#
# letters_in_hand = ["A", "A", "A", "A", "A", "M", "B", "J", "C", "O"]

def uses_available_letters? (input, letters_in_hand)
valid_letter = []
word_letters = input.split('')
puts "#{letters_in_hand}"

  word_letters.each do |letter|
    x = letters_in_hand.include?letter.upcase
    valid_letter << x

    # rearrange or cut arrange to reflect used letters?
    #
    #
  end

#puts valid_letter.all?
  return valid_letter.all?
end

#puts letters_in_hand.include?word_letters

#puts word_letters & letters_in_hand
# puts ["J", "A", "M"].include?["M", "J", "A"]
some_letters = %w(A P G D J Q I M L A)
puts uses_available_letters?("jam", some_letters)
