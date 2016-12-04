Rails.application.routes.draw do

  resources :todo_lists do
    resources :todo_items, only: [:create, :destroy] do
    	member do
    		patch :complete
    	end
    end
  end

  mount StaticContent::hello, :at => "/hello"
  mount StaticContent::about, :at => "/about"


  root "todo_lists#index"
end
