class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.all
    @movies = @movies.where(english: true)
    render "index.json.jb"
  end

  def show
    input_id = params["show"]
    @movie = Movie.find_by(id: input_id)
    # render "show.json.jb"
    render "show.html.erb"
  end

  def create
    @movie = Movie.new ({
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    })
    if @movie.save
      render "show.json.jb"
    else
      render json: { error: @movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    input_id = params["id"]
    @movie = Movie.find_by(id: input_id)
    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english

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
