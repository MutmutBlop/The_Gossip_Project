Rails.application.routes.draw do

  resources :gossips

  get 'gossips/home'
  get 'gossips/team'
  get 'gossips/contact'
  get 'gossips/welcome'
  get 'gossips/gossip'
  get 'gossips/author'

  get '/', to: 'gossips#home'

  get '/team', to: 'gossips#team'

  get '/contact', to: 'gossips#contact'

  get '/welcome/:anything', to: 'gossips#welcome'

  get 'gossip/:id', to: 'gossips#gossip', as: 'the_gossip'

  get 'gossip/author/:id', to: 'gossips#author', as: 'the_author'

end
