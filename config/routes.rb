Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/users/sign_in'  => 'devise/sessions#create'
  get  '/users/sign_up'  => 'devise/sessions#new'

  devise_scope :user do
    get 'signup' => 'devise/sessions#new'
    post 'signin' => 'devise/sessions#create'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
