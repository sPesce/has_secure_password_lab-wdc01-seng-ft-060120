Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/signup'=> 'users#create'
  get '/users/[:id]/home' => 'users#homepage', as: "home"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
