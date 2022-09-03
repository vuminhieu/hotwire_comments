Rails.application.routes.draw do
  resources :projects do
    resources :comments, only: %i[create]
  end
  root "projects#index"
end
