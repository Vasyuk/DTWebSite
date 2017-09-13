Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'static_pages#pagedaccueile'

  get '/portfolio', to: 'static_pages#portfolio'

  get '/contacts',  to: 'static_pages#contacts'

end
