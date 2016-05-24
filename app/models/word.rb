class Word < ActiveRecord::Base
  # Remember to create a migration!

  def anagrams
    split_word = self.word.split('').sort
    equal_length_words.select do |word|
      word.split('').sort == split_word
    end - [self.word]
  end

  private

  def words_only_array
    list = Word.all
    list.map { |word| word.word }
  end

  def equal_length_words
    words_only_array.select do |word|
      word.length == self.word.length
    end
  end

end

