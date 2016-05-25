class Word < ActiveRecord::Base
  # Remember to create a migration!

  def anagrams
    split_word = self.word.split('').sort
    equal_length_words.select do |word|
      word.word.split('').sort == split_word && word.word != self.word
    end
  end

  private

  def equal_length_words
    Word.all.select do |word|
      word.word.length == self.word.length
    end
  end

end

