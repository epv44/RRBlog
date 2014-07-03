Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :articles do
    resources :comments
  end

  root "articles#index"
  match '/about', to: 'about#index', via:'get'

end
