Rails.application.routes.draw do
  get 'flats' => 'flats#index'

  get 'flats/show'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
