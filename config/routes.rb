Rails.application.routes.draw do
  # get 'patterns/new'
  # get 'patterns/create'
  # get 'patterns/edit'
  # get 'patterns/update'
  # get 'patterns/destroy'
  # root to: 'pages#home'
  resources :patterns
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
