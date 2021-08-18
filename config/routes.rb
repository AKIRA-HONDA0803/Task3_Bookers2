Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "/home/about" => "homes#about"
   resources :books, only: [:create, :index, :show, :destroy, :edit, :update ]do
   end

   resources :users, only: [:show, :edit, :update, :index, :create, :destroy]


end