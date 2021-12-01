Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#index'
  get '/', to: 'application#index'
  get '/all/public/:id', to: 'application#show'
end
