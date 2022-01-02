require './constants'
require 'sqlite3'
require 'sinatra'

DB = SQLite3::Database.new(PATH)

def get_tile(z, x, y)
  tile_row = 2 ** z.to_i - y.to_i - 1
  tile = DB.execute <<-EOS
SELECT tile_data FROM tiles WHERE \
zoom_level=#{z} AND tile_column=#{x} AND tile_row=#{tile_row}
  EOS
  tile[0][0]
end

p get_tile('13', '3808', '2815')

get '/zxy/:z/:x/:y.pbf' do |z, x, y|
  content_type 'application/vnd.mapbox-vector-tile'
  response.headers['content_encoding'] = 'gzip'
  response.headers['Access-Control-Allow-Origin'] = '*'
  get_tile(z, x, y)
end
