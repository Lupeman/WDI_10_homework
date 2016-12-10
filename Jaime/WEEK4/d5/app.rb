require "pry"
require "sinatra"
require "sinatra/reloader"
require "httparty"

get "/" do
  "Hello World"
  # @movie = params[:movie]
  # @result = HTTParty.get('http://omdbapi.com/?t=@movie')
  # @movie_info =
  erb :index
end


#
# binding.pry
