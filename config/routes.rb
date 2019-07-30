Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    post "/signup", to: "users#create"
    delete "/logout", to: "sessions#destroy"
    get "/search-results", to: "search_results#show_results"
    get "/rooms", to: "static_pages#room"
    resources :users
    resources :hotels do
      resources :rooms
    end
    resources :password_resets, only: %i(new create edit update)
    resources :account_activations, only: :edit
  end
end
