get '/words/:word' do
  @word = params[:word]
  word_in_db = Word.all.find_by(word: @word)

  if word_in_db == nil
    erb :"words/error"
  else
    @anagram_array = word_in_db.anagrams
  # Look in app/views/words/index.erb
    erb :"words/index"
  end
end

