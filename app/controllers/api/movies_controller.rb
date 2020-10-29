class Api::MoviesController < ApplicationController
  def movies
    @movies = Movie.all
    render "movies.json.rb"
  end

  def movie1
    @movie = Movie.first
    render "movie1.json.jb"
  end

  def movie2
    @movie2 = Movie.find_by(id: 2)
    render "movie2.json.rb"
  end

  def movie3
    @movie3 = Movie.find_by(id: 3)
    render "movie3.json.rb"
  end
end
