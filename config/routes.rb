Rails.application.routes.draw do
  root 'toppages#index'
  resource :products, only: [:index, :new, :create]
end
