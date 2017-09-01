Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'static_pages#pagedaccueile'

  get '/portfolio', to: 'static_pages#portfolio'

  get '/contacts',  to: 'static_pages#contacts'

end
