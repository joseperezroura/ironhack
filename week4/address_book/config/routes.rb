Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'site#home'

get '/contacts', to: 'contact#addressbook'

get '/contacts/new', to: 'contact#new'

post '/contacts', to: 'contact#create'

end
