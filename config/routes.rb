Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#actors"
    get "/movies" => "movies#movies"
    # get "/movie1" => "movies#movie1"
    get "/movie2" => "movies#movie2"
    get "/movie3" => "movies#movie3"

    get "/movie1/:variable" => "movies#movie1"
    post "/movie1" => "movies#movie1"
  end
end
