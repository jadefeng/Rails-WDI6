Rails.application.routes.draw do
  root :to => 'planets#index'
  get '/planets' => 'planets#index'
  get '/planets/new' => 'planets#new'
  post '/planets' => 'planets#create'
  get '/planets/:id' => "planets#show", :as => 'planet' # Planet path as a single planet
  post '/planet/:id/delete' => 'planets#destroy', :as => 'planet_delete'
  get '/planet/:id/edit' => 'planets#edit', :as => 'planet_edit'
  post '/planets/:id' => 'planets#update' 	# Don't need a path name because it already is used above as 'planets_path'
end
