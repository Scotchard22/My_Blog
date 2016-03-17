Rails.application.routes.draw do

  devise_for :users
  get '/about', to: 'static_pages#about', as: 'about'

  resources :posts do
    resources :comments
  end
  
  root "posts#index"

end
