Rails.application.routes.draw do
<<<<<<< HEAD
  root 'users#index'
=======
  root 'static#home'
  
>>>>>>> 6693689b14295c0ea62036dab9b59af01075c720

  resources :users do
    resources :appointments
  end

  resources :doctors do
    resources :appointments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
