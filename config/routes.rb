Rails.application.routes.draw do
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'create_new_oneTree' }
  root 'home#index'
  resources :projects
  resources :abouts
  resources :admins
end
