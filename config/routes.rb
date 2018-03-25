Rails.application.routes.draw do
  get 'photo/new'

  get 'categorycomment/new'

  get 'categories/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'


  root to: 'pages#index'
  devise_for :users

  resources :categories do
  	resources :categorycomments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
