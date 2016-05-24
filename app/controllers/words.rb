get '/words/:word' do
  @word = params[:word]

  @anagrams = @word.anagrams
  # Look in app/views/words/index.erb
  erb :"words/index"
end
