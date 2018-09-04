require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @translation = PigLatinizer.new

    redirect '/piglatinize'
  end

  get '/piglatinize' do
    erb :piglatinize
  end

end
