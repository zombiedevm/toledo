Toledo::Application.routes.draw do
	
  devise_for :users
  	root to: "dashboard#index"
    namespace :noticias do
    	
      	resources :users
      	root :to =>redirect("/users/sign_in")
      	authenticated :user do
      		match'dashboard' => 'home#index' 
    		end
  	end
end