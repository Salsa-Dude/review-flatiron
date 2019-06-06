Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/home', to: 'welcome#home'
  get '/login', to: 'sessions#new'
  post '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
  resources :users, only: [:new, :create]
end
