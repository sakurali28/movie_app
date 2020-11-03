class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    input_id = params["show"]
    @movie = Movie.find_by(id: input_id)
    render "show.json.jb"
  end

  def create
    @movie = Movie.new ({
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
    })
    @movie.save
    render "show.json.jb"
  end

  def update
    input_id = params["id"]
    @movie = Product.find_by(id: input_id)
    @movie.id = params["id"] || @movie.id
    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot

    @movie.save
    render "show.json.jb"
  end

  def destroy
    input_id = params["id"]
    @movie = Movie.find_by(id: input_id)
    @movie.destroy
    render json: { message: "It's gone!" }
  end
end
