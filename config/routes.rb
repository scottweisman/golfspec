Golfspec::Application.routes.draw do

  root :to =>  'rounds#index'
  resources :rounds
  
end
