Rails.application.routes.draw do
  
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do
  post "sandwiches/:id/ingredients/add", to: "sandwiches#add_ingredient"
  delete "sandwiches/:id/ingredients/remove", to: "sandwiches#remove_ingredient"
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
    end

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

