require 'sinatra/base'
require 'sinatra/activerecord'

class MakersBnB < Sinatra::Base

  register Sinatra::ActiveRecordExtension
  enable :sessions, :method_override

  configure :development do
    set :database, { adapter: 'postgresql',  encoding: 'unicode', database: 'makersBnB' }
  end

  configure :test do
    set :database, { adapter: 'postgresql',  encoding: 'unicode', database: 'makersBnB_test' }
  end

  get '/' do
    erb :index
  end

  get '/register' do

  end

  post '/register' do
    redirect('/')
  end

  get '/login' do

  end

  post '/login' do

  end

  run! if app_file == $0
end
