Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'owners#index'

  get '/owners', to: 'owners#index', as: 'home'
  get '/signup', to: 'owners#new', as: 'new_owner'
  post '/owners', to: 'owners#create'
  get '/:id', to: 'owners#show', as: 'owner'

  get '/pets', to: 'pets#index', as: 'pets'
  get '/newpet', to: 'pets#new', as: 'new_pet'
  post '/pets', to: 'pets#create'

end
