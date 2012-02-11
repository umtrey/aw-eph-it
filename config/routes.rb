AwEphIt::Application.routes.draw do

  get 'game_search' => "game_search#index"
  get '/index' => "game_search#index"
  get '/list' => "game_search#list"
<<<<<<< HEAD

  get '/game_search' => "game_search#index"

=======
  
  resources :rules
>>>>>>> trey2
  resources :sources
  resources :gameingredients
  resources :ingredients do
    get 'random_rule'
  end
  resources :gamelocations
  resources :locations
  resources :games
  root :to => 'game_search#index'

end
