class Api::ActorsController < ApplicationController
  def actors
    @actor = Actor.find_by(id: 1)
    render "actors.json.rb"
  end
end
