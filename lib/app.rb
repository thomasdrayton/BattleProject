require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    redirect to('/names')
  end

  get '/names' do
    erb(:nameform)
  end

  #session is most often used to store details of a logged in user, splitting
  #the previous post statement into 1 post and 1get

  post '/fight' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect('/play')
    erb(:namesgiven)
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:namesgiven)
  end


# start the server if ruby file executed directly
run! if app_file == $0

end
