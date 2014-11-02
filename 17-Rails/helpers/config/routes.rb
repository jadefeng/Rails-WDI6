Rails.application.routes.draw do
  root :to => 'home#home'          # To the home controller and run the home method

  get '/numbers' => 'home#numbers'
  get '/text' => 'home#text'
  get '/assets' => 'home#assets'
  get '/url' => 'home#url'
  
end
