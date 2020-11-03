Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#index"
    get "/actors/:show" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:show" => "actors#update"
    delete "/actors/:show" => "actors#sdestroy"

    get "/movies" => "movies#index"
    get "/movies/:show" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:show" => "movies#update"
    delete "/movies/:show" => "movies#sdestroy"
  end
end
