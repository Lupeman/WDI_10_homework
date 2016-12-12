require "pry"
require "sinatra"
require "sinatra/reloader"
require "httparty"

get "/" do
  erb :index
end

get "/movie" do
  @movie = params[:title]
  @movie_info = HTTParty.get("http://omdbapi.com/?s=#{@movie}")
    # binding.pry
  # @movie_title = @movie_info["Search"]
  # @movie_year = @movie_info["Year"]
  # @movie_rated = @movie_info["Rated"]
  # @movie_released = @movie_info["Released"]
  # @movie_runtime = @movie_info["Runtime"]
  # @movie_genre = @movie_info["Genre"]
  # @movie_director = @movie_info["Director"]
  # @movie_writer = @movie_info["Writer"]
  # @movie_actors = @movie_info["Actors"]
  # @movie_plot = @movie_info["Plot"]
  erb :movie_info
end






#
#
# binding.pry
