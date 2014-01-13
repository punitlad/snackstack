Snackstack::Application.routes.draw do
  resources :items
  devise_for :users
end
