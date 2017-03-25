Rails.application.routes.draw do
  root 'application#index'
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end 
end
