Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/destroy'

  get '/posts' => 'posts#index'
  root 'posts#index'
  get '/posts/new' => 'posts#new'
  get '/posts/:id' => 'posts#show'
  post '/posts' => 'posts#create'


  post '/sessions/new' => 'sessions#new'
end
