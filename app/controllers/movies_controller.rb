# Movies Controller - generated with 'rails g controller movies'
class MoviesController < ApplicationController
  def index
    @movies = ['Iron Man', 'Spiderman', 'Superman', 'Batman']
  end
end
