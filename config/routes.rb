Rails.application.routes.draw do
  get 'gossips/home'
  get 'gossips/team'
  get 'gossips/contact'
  get 'gossips/welcome'

get '/', to: 'gossips#home'

get '/team', to: 'gossips#team'

get '/contact', to: 'gossips#contact'

get '/welcome/:anything', to: 'gossips#welcome'

end
