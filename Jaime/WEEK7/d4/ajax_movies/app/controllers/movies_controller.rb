class MoviesController < ApplicationController

  def index
    # @movies = Movie.all
    # render json: @movies
    render file: 'Movies/index.html.erb'
  end

  def show

  end

  def create
    @movie = Movie.new (movies_params)
      if @movie.save
        render json: @movie
      end
  end

  private
   def movies_params
     params.require(:movie).permit(:title, :year)
   end

end
