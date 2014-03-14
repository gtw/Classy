Final::Application.routes.draw do

  root "users#show"

  resources :users
  resources :sessions
  resources :courses
  resources :lessons
  resources :comments
  resources :rosters

  get "/welcome" => "users#welcome", :as => 'welcome'

end