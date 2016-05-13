require 'sinatra/base'

class Hello < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/greet" do
    @message = "Hi #{params[:name]}"
    erb :greet
  end
end
