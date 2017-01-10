require "pry"
require "sinatra"
require "sinatra/reloader"
require "httparty"

get "/" do
  erb :index
end

get "/movie_list" do
  @movie = params[:title]
  @movie_info = HTTParty.get("http://omdbapi.com/?s=#{@movie}")
  if @movie_info["Search"].length > 1
    erb :movie_list
  else
  redirect to("/movie?param1=#{@movie}")
  end
end

get "/movie" do
  @movie_name = params[:param1]
  @movie_info = HTTParty.get("http://omdbapi.com/?t=#{@movie_name}")
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
   @movie_poster = @movie_info["Poster"]
  erb :movie
end





#
#
# binding.pry
