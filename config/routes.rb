Rails.application.routes.draw do
  root 'static#home'

  resources :users do
    resources :appointments
  end

  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
