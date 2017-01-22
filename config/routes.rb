Rails.application.routes.draw do
  get '/posts' => 'posts#index'
  root 'posts#index'
  get '/posts/:id' => 'posts#show'
end
