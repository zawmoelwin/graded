Rails.application.routes.draw do
  root 'application#index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :test
  resources :questionbanks
  get "/takingtest" , to: 'taking#test', as: 'test_taking'
  get "/users/:id" , to: 'users#show', as: 'user_profile'
end
