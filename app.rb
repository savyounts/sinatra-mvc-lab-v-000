require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/user_input' do
    @translation = PigLatinizer.new(params[:textarea])
    erb :user_input
  end
end
