Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'

  get '/stock' => 'stock#index'
  get '/stock/lookup' => 'stock#lookup'

  get '/movie' => 'movie#index'
  get '/movie/lookup' => 'movie#lookup'

end
