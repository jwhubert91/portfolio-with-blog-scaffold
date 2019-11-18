Rails.application.routes.draw do
  resources :works, except: [:show]
  get 'work/:id', to: 'works#show', as: 'work_show'

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
