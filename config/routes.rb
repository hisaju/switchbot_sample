Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/', to: 'alexas#create'
  post '/destroy', to: 'alexas#destroy'
end
