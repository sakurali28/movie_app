class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    input_id = params["show"]
    @actor = Actor.find_by(id: input_id)
    render "show.json.jb"
  end

  def create
  @actor = Actor.new({
    first_name: @actor["first_name"]
    last_name: @actor["last_name"]
    known_for: @actor["known_for"]
  })
  @actor.save
  render "show.json.jb"
  end

  def update
    input_id = params["id"]
    @actor = Actor.find_by(id: input_id)
    @actor.first_name = params["id"] || @actor.first_name
    @actor.last_name = params["id"] || @actor.last_name
    @actor.known_for = params["id"] || @actor.known_for

    @actor.save
    render "show.json.jb"
  end

  def destroy
    input_id = params["id"]
    @actor = Actor.find_by(id: input_id)
    @actor.destroy
    render json: { message: "It's gone!" }
  end

end
