Rails.application.routes.draw do
  resources :search_results, only: :index

  root to: "products#index"

end
