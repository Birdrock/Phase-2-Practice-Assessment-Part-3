get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do

  #Create and return a JSON object with the random cell and color given below.

  cell= rand(1..9)
  color= "#" + "%06x" % (rand * 0xffffff)
  content_type :json
  info_hash = {cell: cell, color: color}.to_json
end