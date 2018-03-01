Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'owners#index'

  get '/owners', to: 'owners#index', as: 'owners'
  get '/signup', to: 'owners#new', as: 'new_owner'
  post '/owners', to: 'owners#create'
  get '/owners/:id', to: 'owners#show', as: 'owner'

  get '/login', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  get '/logout', to: 'sessions#destroy'

end
