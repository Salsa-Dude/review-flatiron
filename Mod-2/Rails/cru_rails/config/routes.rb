Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/artists", to: 'artists#index'
  # get "/artists/new", to: 'artists#new'
  # get "/artists/:id", to: 'artists#show', as: "artist"

  resources :artists

end
