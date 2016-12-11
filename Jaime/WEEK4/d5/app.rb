require "pry"
require "sinatra"
require "sinatra/reloader"
require "httparty"

get "/" do
  @movie = params[:movie]
  @movie_info = HTTParty.get("http://omdbapi.com/?t=#{@movie}")
  @movie_title = @movie_info["Title"]
  @movie_year = @movie_info["Year"]
@movie_rated = @movie_info["Rated"]
@movie_released = @movie_info["Released"]
@movie_runtime = @movie_info["Runtime"]
@movie_genre = @movie_info["Genre"]
@movie_director = @movie_info["Director"]
@movie_writer = @movie_info["Writer"]
@movie_actors = @movie_info["Actors"]
@movie_plot = @movie_info["Plot"]
  erb :index
end

#
#
# binding.pry
