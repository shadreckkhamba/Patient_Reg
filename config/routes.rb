Rails.application.routes.draw do
resources :patients, only: [:new, :create, :show]
root 'patients#new'
end