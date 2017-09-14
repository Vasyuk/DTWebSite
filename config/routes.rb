Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'static_pages#pagedaccueile'

  get '/portfolio', to: 'static_pages#portfolio'

  get '/contacts',  to: 'static_pages#contacts'

  get '/portfolio/background',  to: 'portfolio#background'

  get '/portfolio/illustration',  to: 'portfolio#illustration'

  get '/portfolio/modeles3D',  to: 'portfolio#modeles3D'

  get '/portfolio/personnages',  to: 'portfolio#personnages'

  get '/portfolio/photographie',  to: 'portfolio#photographie'

  get '/portfolio/video',  to: 'portfolio#video'

end
