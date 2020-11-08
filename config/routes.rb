Rails.application.routes.draw do

  root 'homes#top'
  resources :favorites, only:[:show]
  devise_for :users
  post '/homes/guest_sign_in', to: 'homes#new_guest'
  resources :users
  resources :posts do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  
  resources :house_makers, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
  resources :users do
    resource :follow,only: [:create, :destroy]
    resources :followings,only: [:index] 
    resources :followers,only: [:index] 
  end

end
