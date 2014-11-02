# == Route Map
#
#       Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            home#index
#        songs GET    /songs(.:format)             songs#index
#              POST   /songs(.:format)             songs#create
#     new_song GET    /songs/new(.:format)         songs#new
#    edit_song GET    /songs/:id/edit(.:format)    songs#edit
#         song GET    /songs/:id(.:format)         songs#show
#              PATCH  /songs/:id(.:format)         songs#update
#              PUT    /songs/:id(.:format)         songs#update
#              DELETE /songs/:id(.:format)         songs#destroy
#      artists GET    /artists(.:format)           artists#index
#              POST   /artists(.:format)           artists#create
#   new_artist GET    /artists/new(.:format)       artists#new
#  edit_artist GET    /artists/:id/edit(.:format)  artists#edit
#       artist GET    /artists/:id(.:format)       artists#show
#              PATCH  /artists/:id(.:format)       artists#update
#              PUT    /artists/:id(.:format)       artists#update
#              DELETE /artists/:id(.:format)       artists#destroy
#       genres GET    /genres(.:format)            genres#index
#              POST   /genres(.:format)            genres#create
#    new_genre GET    /genres/new(.:format)        genres#new
#   edit_genre GET    /genres/:id/edit(.:format)   genres#edit
#        genre GET    /genres/:id(.:format)        genres#show
#              PATCH  /genres/:id(.:format)        genres#update
#              PUT    /genres/:id(.:format)        genres#update
#              DELETE /genres/:id(.:format)        genres#destroy
#       albums GET    /albums(.:format)            albums#index
#              POST   /albums(.:format)            albums#create
#    new_album GET    /albums/new(.:format)        albums#new
#   edit_album GET    /albums/:id/edit(.:format)   albums#edit
#        album GET    /albums/:id(.:format)        albums#show
#              PATCH  /albums/:id(.:format)        albums#update
#              PUT    /albums/:id(.:format)        albums#update
#              DELETE /albums/:id(.:format)        albums#destroy
#     mixtapes GET    /mixtapes(.:format)          mixtapes#index
#              POST   /mixtapes(.:format)          mixtapes#create
#  new_mixtape GET    /mixtapes/new(.:format)      mixtapes#new
# edit_mixtape GET    /mixtapes/:id/edit(.:format) mixtapes#edit
#      mixtape GET    /mixtapes/:id(.:format)      mixtapes#show
#              PATCH  /mixtapes/:id(.:format)      mixtapes#update
#              PUT    /mixtapes/:id(.:format)      mixtapes#update
#              DELETE /mixtapes/:id(.:format)      mixtapes#destroy
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#

Rails.application.routes.draw do

  root :to => "pages#home"
  resources :songs, :artists, :genres, :albums, :mixtapes, :users

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete 'login' => 'session#destroy'
  
end
