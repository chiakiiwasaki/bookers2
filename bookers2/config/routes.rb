Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about'

  resources :users, only: [:index, :show, :update, :edit]
  resources :books, only: [:index, :create, :show, :destroy, :edit, :update]


end
