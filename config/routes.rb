Rails.application.routes.draw do
  get 'welcome/index'
  resources :posts
  devise_for :users
  root 'welcome#index'
  # resources :users do
  #   resources :posts
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
