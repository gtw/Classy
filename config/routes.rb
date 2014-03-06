Final::Application.routes.draw do

  root "pages#home"

  resources :users
  resources :sessions
  resources :courses

  get "/welcome" => "pages#welcome", :as => 'welcome'

end