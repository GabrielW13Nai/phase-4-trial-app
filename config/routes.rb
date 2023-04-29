Rails.application.routes.draw do
  resources :confectionaries, only: [:index, :show, :create]
end
