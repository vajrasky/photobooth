require 'sinatra'
require 'byebug'
require "sqlite3"

get '/all' do

end

get '/' do
  erb :index
end

post '/save' do
  debugger
  db = SQLite3::Database.new "photos.db"

  erb :saved
end
