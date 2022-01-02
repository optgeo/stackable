require './constants'
require 'sqlite3'
require 'sinatra'
require 'sinatra/cors'

DB = SQLite3::Database.new(PATH)

def get_tile(z, x, y)
  tile_row = 2 ** z.to_i - y.to_i - 1
  tile = DB.execute <<-EOS
SELECT tile_data FROM tiles WHERE \
zoom_level=#{z} AND tile_column=#{x} AND tile_row=#{tile_row}
  EOS
  tile[0] ? tile[0][0] : 404
end

#p get_tile('13', '3808', '2815')

set :allow_origin, '*'
set :allow_methods, 'GET,HEAD,OPTIONS'
set :allow_headers, 'content-type,if-modified-since'
set :expose_headers, 'location,link'

options '*' do
  response.headers['Allow'] = 'HEAD,GET,PUT,POST,DELETE,OPTIONS'
  response.headers['Access-Control-Allow-Headers'] =
    "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
  200
end

get '/zxy/:z/:x/:y.pbf' do |z, x, y|
  content_type 'application/vnd.mapbox-vector-tile'
  response.headers['Content-Encoding'] = 'gzip'
  get_tile(z, x, y)
end
