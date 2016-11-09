Rails.application.routes.draw do
 
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get '/say_name/:name', to: 'site#say_name'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get '/calculator', to: 'calculator#add_form'
  post '/calculate', to: 'calculator#process_addition'

  get '/projects', to: 'projects#index'

  get '/projects/:id', to: 'projects#show', as: 'project'
  


  #<form method="post" action="/calculate"> 

end
