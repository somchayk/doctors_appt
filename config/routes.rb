Rails.application.routes.draw do
  get 'doctors/index'
  get 'doctors/show'
  get 'doctors/edit'
  get 'doctors/new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/new'
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/edit'
  get 'appointments/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
