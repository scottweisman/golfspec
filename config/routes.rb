Golfspec::Application.routes.draw do

  root :to =>  'rounds#index'
  resources :rounds
  resources :stats

  match "payments" => "payments#index"
	
  
end
