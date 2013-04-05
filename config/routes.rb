Musictopia::Application.routes.draw do
  root to: "artists#index"

  resources :artists do
    resources :singles
    resources :bands, only: [:index]
  end

  resources :bands
  resources :singles
end
