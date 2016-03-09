Rails.application.routes.draw do
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'create_new_oneTree' }
  root 'home#index'
  resources :projects, :path => "work"
  resources :projects do
    post :update_row_order, on: :collection
  end
  resources :abouts, :path => "about"
  resources :admins, :path => "admin"
end
