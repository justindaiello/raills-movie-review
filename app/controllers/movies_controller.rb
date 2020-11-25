class MoviesController < ApplicationController
  def index
    @movies = ['Iron Man', 'Spiderman', 'Superman', 'Batman']
  end
end
