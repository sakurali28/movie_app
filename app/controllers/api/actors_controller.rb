class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    @actors = @actors.order(age: :asc)
    render "index.json.jb"
  end

  def show
    input_id = params["show"]
    @actor = Actor.find_by(id: input_id)
    render "show.json.jb"
  end

  def create
    @actor = Actor.new({
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      age: params["age"],
    })
    if @actor.save
      render "show.json.jb"
    else
      render json: { error: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    input_id = params["id"]
    @actor = Actor.find_by(id: input_id)
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.age = params["age"] || @actor.age

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
