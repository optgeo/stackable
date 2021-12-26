require './constants'
require 'sqlite3'
require 'sinatra'

# DB = SQLite3::Database.new(PATH)

get '/zxy/:z/:x/:y.pbf' do |z, x, y|
  "Hello #{y}!"
end
