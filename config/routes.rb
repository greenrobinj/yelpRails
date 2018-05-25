Rails.application.routes.draw do
  root 'static#home'
  resources :yelps

  get '/about', to: 'static#about'

end
