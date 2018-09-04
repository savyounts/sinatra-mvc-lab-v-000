require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @translation = PigLatinizer.new(params[:user_text])

    erb :final_output
  end
end
