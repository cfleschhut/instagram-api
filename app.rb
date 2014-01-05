require 'sinatra'
require 'instagram'

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_CLIENT_ID']
  config.access_token = ENV['INSTAGRAM_ACCESS_TOKEN']
end

get '/' do
  @recent_media = Instagram.user_recent_media(count: 25)
  erb :index
end
