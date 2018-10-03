Rails.application.routes.draw do
  resources :zoekertjes
  devise_for :users
  root 'pages#home'
  resources :users, :only => [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
