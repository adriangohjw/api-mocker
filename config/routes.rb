Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#index'
  get '/', to: 'application#index'
  post '/api_content/create', to: 'api_content#create'
  get '/all/public/:id', to: 'api_content#show', as: 'all_public_show'
end
