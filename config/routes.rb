Rails.application.routes.draw do
  devise_for :users
  resources :links
  get '/users/sign_out' => 'devise/sessions#destroy', as: 'destroy_user_session_path'
  root to: "links#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
