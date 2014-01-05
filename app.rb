require 'sinatra'

get '/' do
  @path = "index"
  erb :index
end

get '/:path' do
  @path = params[:path]
  erb :index
end
