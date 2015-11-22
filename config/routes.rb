Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, only: :show
  namespace :api, defaults: {format: :json} do
    resources :movies, only: :index
  end
end
