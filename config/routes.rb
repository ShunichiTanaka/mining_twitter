Rails.application.routes.draw do
  root to: 'top#index'
  get '/search', to: 'search#index'
  post '/search_result', to: 'search#search'
end
