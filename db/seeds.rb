WORD_LIST_FILENAME = "db/fixtures/word_list.txt"

Word.delete_all

File.foreach(WORD_LIST_FILENAME) do |line|
  # write code to create a new record in the database for each line of the input file
  Word.create!(word: line.chomp)
end
