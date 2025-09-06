Rails.application.routes.draw do
  devise_for :users
  get 'tweets/rank' => 'tweets#rank'
  resources :users, only: [:show]
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
resources :perfumes
root 'tweets#index'

end
