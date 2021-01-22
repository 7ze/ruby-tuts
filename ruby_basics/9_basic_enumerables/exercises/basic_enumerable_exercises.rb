def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each { |key, value| puts "#{key}, quantity: #{value}" }
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index { |item, number| puts "Guess ##{number + 1} is #{item}" }
end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map(&:abs)
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return an array of list items with values less than 4
  inventory_list.select { |_item, quantity| quantity < 4 }
end

def find_longest_word(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return the longest word in the word_list
  # hint: the result of each iteration should be the accumulator when its
  # length is greater than word.length (otherwise the result should be the word)
  word_list.reduce do |longest_word, word|
    longest_word = word if word.length >= longest_word.length
    longest_word
  end
end

def find_longer_words(word_list, base_word)
  # use #reduce to iterate through each item of the word_list (an array)
  # return an array of words that is longer than the base_word (a string)
  # hint: use a new array or an empty array as the initial accumulator value
  word_list.each_with_object([]) do |v, a|
    a.push(v) if v.length > base_word.length
  end
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: use a new hash or an empty hash as the initial accumulator value
  word_list.reduce(Hash.new) do |word_length_hash, word|
    word_length_hash[word] = word.length
    word_length_hash
  end
end
