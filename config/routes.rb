Rails.application.routes.draw do
  resources :posts, only: [:index]
  resources :users, only: [:index, :show, :create] do
    resources :posts, only: [:index, :show, :create]
  end
end