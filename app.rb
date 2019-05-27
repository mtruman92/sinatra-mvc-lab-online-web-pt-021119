require_relative 'config/environment'

class App < Sinatra::Base
  
    get '/' do
    erb :user_input
  end

 post '/piglatinize' do
  user_input = PigLatinizer.new
 
  @piglatin = Piglatinizer.new(user_input)
 
  erb :results
end
  
end
