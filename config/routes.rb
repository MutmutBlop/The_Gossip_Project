Rails.application.routes.draw do

  root 'static_pages#index'

  resources :static_pages
  resources :gossips
    resources :comments
  
  resources :users
  resources :cities

  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/welcome/', to: 'static_pages#welcome'
  get '/welcome/:anything', to: 'static_pages#welcome'

end
