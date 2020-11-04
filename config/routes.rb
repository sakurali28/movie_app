Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#index"
    get "/actors/:show" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#sdestroy"

    get "/movies" => "movies#index"
    get "/movies/:show" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#sdestroy"
  end
end
