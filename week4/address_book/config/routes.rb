Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'
  get '/projects', to: 'projects#index'
  get '/new', to: 'projects#new'
  post '/projects', to: 'projects#create'

end
