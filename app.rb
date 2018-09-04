require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do


    redirect '/piglatinize'
  end

  get '/piglatinize' do
    @translation = PigLatinizer.new
    erb :piglatinize
  end

end
