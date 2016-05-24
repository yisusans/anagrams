class Word < ActiveRecord::Base
  # Remember to create a migration!

  def anagrams
    split_word = self.word.split('').sort
    list = Word.all
    words_only_list = list.map { |word| word.word }
    words_only_list.select do |word|
      word.split('').sort == split_word
    end - [self.word]
  end
end
