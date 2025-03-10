Rails.application.routes.draw do
resources :patients, only: [:index, :new, :create, :show]
root 'patients#new'
end