Rails.application.routes.draw do



  #resources :flats, only: [:show, :new,:index, :create, :edit, :update]
  resources :flats
  # get 'flats' => 'flats#index'

  # get 'flats/new' => 'flats#new'
  #post 'flats' => 'flats#create'

  # get 'flats/:id' => 'flats#show'

  #update
   # get 'flats/:id/edit' => 'flats#edit'
   # put 'flats/:id' => 'flats#update'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
