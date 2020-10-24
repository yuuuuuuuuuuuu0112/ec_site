Rails.application.routes.draw do

  devise_for :users
  root 'homes#top'
  resources :users
  resources :posts do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  
  resources :house_makers, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
  

end
