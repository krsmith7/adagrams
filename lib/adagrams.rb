require 'pry'

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


# Define method for creating user hand
def draw_letters(array)
  user_letters = array.sample(10)
  return user_letters
end

DRAWN_LETTERS = draw_letters(all_letters)

def make_word_array(input)
  input = input.upcase.split("")
  return input
end


def uses_available_letters? (input, drawn_letters)
  is_valid = "default"
  word_letters = make_word_array(input)

  word_letters.each do |letter|
    if drawn_letters.include?letter
      is_valid = true
      puts "letter valid " + "#{is_valid}"
      letter_index = drawn_letters.index(letter)
      drawn_letters.delete_at(letter_index)
    else
      is_valid = false
      puts "letter not valid" + "#{is_valid}"
      return is_valid

    end
  end

  return is_valid
end


puts "drawn letters: #{DRAWN_LETTERS}"

# LINES WORK  - test case with input
# puts uses_available_letters?("LAME", DRAWN_LETTERS)

# # LINES WORK - test case with user input
# input = gets.chomp
# puts uses_available_letters?(input, DRAWN_LETTERS)


#turn all_letters array into a hash that represents the score of each letter
LETTER_SCORES = {}

# Make hash for letter to score - works
all_letters.uniq.each do |letter|

  case letter
  when "A","E", "I", "O", "U", "L", "N", "R", "S", "T"
    score = 1
  when "D", "G"
    score = 2
  when "B", "C", "M", "P"
    score = 3
  when "F", "H", "V", "W", "Y"
    score = 4
  when "K"
    score = 5
  when "J", "X"
    score = 8
  when "Q", "Z"
    score = 10
  else
    score = 0
  end

  LETTER_SCORES[letter] = score
end

puts "#{LETTER_SCORES}"

#create method for scoring word

def score_word(word)
  word_letters = make_word_array(word)
  score = 0
  word_letters.each do |letter|
    score += LETTER_SCORES[letter]
  end

  score += 8 if word.length >= 7 && word.length <= 10
  return score
end



# puts score_word("pillowsjamson")
