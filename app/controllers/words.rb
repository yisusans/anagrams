get '/words/:word' do
  @word = params[:word]
  word_in_table = Word.all.find_by(word: @word)

  if word_in_table == nil
    erb :"words/error"
  else
    @anagram_array = word_in_table.anagrams
  # Look in app/views/words/index.erb
    erb :"words/index"
  end
end

