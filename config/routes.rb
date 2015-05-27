Water::Application.routes.draw do
  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  get '/Water/:id' => 'liq#show'
  get '/new_Water' => 'liq#new'
  get '/create_Water' => 'liq#create'
  get '/Water/:id/edit' => 'liq#edit'
  get '/update_Water/:id' => 'liq#update'
  get '/Water/:id/destroy' => 'liq#destroy'
  get '/Water' => 'liq#index'
  
end
