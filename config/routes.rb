Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'owners#index'

  get '/owners', to: 'owners#index', as: 'home'
  get '/signup', to: 'owners#new', as: 'new_owner'
  post '/owners', to: 'owners#create'
  get '/owners/:id', to: 'owners#show', as: 'owner'

  get '/login', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  get '/logout', to: 'sessions#destroy'

  get '/pets', to: 'pets#index', as: 'pets'
  get '/pets/new', to: 'pets#new', as: 'new_pet'
  post '/pets', to: 'pets#create'
  get '/pets/:id', to: 'pets#show', as: 'pet'

end
