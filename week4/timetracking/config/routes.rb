Rails.application.routes.draw do
 
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get '/say_name/:name', to: 'site#say_name'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get '/calculator', to: 'calculator#add_form'
  post '/calculate', to: 'calculator#process_addition'

  get '/projects', to: 'projects#index'

  get '/projects/new', to: 'projects#new' 

  get '/projects/:id', to: 'projects#show', as: 'project'

  get '/projects/:project_id/time_entries', to: 'time_entries#index', as: 'project_time_entries'

  post '/projects', to: 'projects#create'

  get '/projects/:project_id/time_entries/new', to: 'time_entries#new', as: "new_project_time_entry"

  post 'projects/:project_id/time_entries', to: 'time_entries#create' 

  #<form method="post" action="/calculate"> 

end
