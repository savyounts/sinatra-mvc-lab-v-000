require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @translation = PigLatinizer.create(params[:user_phrase])

    erb :piglatinize
  end
end
