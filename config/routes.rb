Rails.application.routes.draw do
  get 'reviews/create'

  root 'movies#index'
  resources :movies, only: :show
  resources :reviews, only: :create, :index
  namespace :api, defaults: {format: :json} do
    resources :movies, only: :index
  end
end
