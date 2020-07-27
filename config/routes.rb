Rails.application.routes.draw do
  root 'toppages#index'
  post 'toppage', to: 'toppages#index'
  resource :products, only: [:index, :new, :create]
end
