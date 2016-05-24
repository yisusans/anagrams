get '/' do
  erb :index
end

post '/words' do
  redirect to("/words/#{params["find_anagram"].downcase}")
end
