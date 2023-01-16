Rails.application.routes.draw do
  root "photos#index"

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  devise_for :users

  resources :users, only: :show

  get ":username/liked" => "photos#liked", as: :liked_photos
  get "/:username" => "users#show", as: :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
