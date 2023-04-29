Rails.application.routes.draw do
  resources :confectionaries, only: [:index, :show, :destroy]
end
