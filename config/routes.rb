Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/tasks', to: 'tasks#index'
get '/tasks/new', to: 'tasks#new'
post '/tasks', to: 'tasks#create'

get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit'
patch '/tasks/:id', to: 'tasks#update'

get '/tasks/:id', to: 'tasks#show', as: 'task'

delete '/tasks/:id', to: 'tasks#destroy'
end

  # # Read all restaurants (index)
  # get '/restaurants', to: 'restaurants#index'
  # # create a restaurant (new + create)
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post '/restaurants', to: 'restaurants#create'
  # # read one restaurant (show)
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # update a restaurant (edit + update)
  # get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch '/restaurants/:id', to: 'restaurants#update'
  # # delete a restaurant (destroy)
  # delete '/restaurants/:id', to: 'restaurants#destroy'
