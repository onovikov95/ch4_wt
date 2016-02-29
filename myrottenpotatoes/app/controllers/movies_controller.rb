# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  # in app/controllers/movies_controller.rb

def show
  @movie = Movie.find_by_id(params[:id])
  # will render app/views/movies/show.html.haml by default
end

private 
  
  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
end

