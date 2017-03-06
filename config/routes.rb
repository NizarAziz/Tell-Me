Rails.application.routes.draw do

  get '/' => 'home#index', as: 'root'
  
  resources :users, :posts


end


