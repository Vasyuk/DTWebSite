Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'static_pages#pagedaccueile'

  get '/portfolio', to: 'static_pages#portfolio'

  get '/contacts',  to: 'static_pages#contacts'

  post '/contacts',  to: 'static_pages#contacts'

  get '/portfolio/background',  to: 'portfolio#background'

  get '/portfolio/illustration',  to: 'portfolio#illustration'

  get '/portfolio/modeles3D',  to: 'portfolio#modeles3D'

  get '/portfolio/personnages',  to: 'portfolio#personnages'

  get '/portfolio/photographie',  to: 'portfolio#photographie'

  get '/portfolio/video',  to: 'portfolio#video'

  resources :emails
end
