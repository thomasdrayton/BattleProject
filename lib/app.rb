require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  get '/names' do
    erb(:nameform)
  end

  post '/fight' do
    #@name1 = params[:name1]
    #@name2 = params[:name2]
    erb(:namesgiven)
  end

# start the server if ruby file executed directly
run! if app_file == $0

end
