Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # VERB + URL + CONTROLLER#ACTION
  #get '/' => root
  root to: "flats#index"

  # /flats/100
  get '/flats/:id', to: 'flats#show', as: :flat
end
