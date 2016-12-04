Rails.application.routes.draw do

  resources :todo_lists do
    resources :todo_items, only: [:create, :destroy] do
    	member do
    		patch :complete
    	end
    end
  end

  mount StaticContent::hello(200,'<h1>Hello page</h1>'), :at => "/hello"
  mount StaticContent::hello(200,'<h1>About page</h1>'), :at => "/about"


  root "todo_lists#index"
end
