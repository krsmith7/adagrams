#create data structure
# def add_letters (letter, qty)
#   letter_pool = []
#   qty.times do |letter|
#     letter_pool << "#{letter}"
#   end
#   return letter_pool
# end
#
# letter_pool = add_letters("A", 9)
# puts "#{letter_pool}"

# all_letters = [
# "A", "A", "A", "A", "A", "B", "B", "C", "C", "D", "E"
# ]

# Define method for creating user hand
def draw_letters
  all_letters =
  # [ "A", "A", "A", "A", "A", "A", "A" A A "B", "B", "C", "C", "D", "E"]
  %w(A A A A A A A A A B B C C D D D D E E E E E E E
     E E E E E F F G G G H H I I I I I I I I I J K L L L L M M N N N N N N O O O O O O O O P P Q R R R R R R S S S S T T T T T T U U U U V V W W X Y Y Z)
  user_letters = []

  user_letters = all_letters.sample(10)

  return user_letters
end

puts "#{draw_letters}"

alphabet = Array.new(4, "A")
puts "#{alphabet}"
