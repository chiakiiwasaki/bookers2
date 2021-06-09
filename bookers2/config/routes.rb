Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:index, :create, :edit, :show, :destroy]
  resources :post_images, only: [:create, :show, :destroy]
  
end
