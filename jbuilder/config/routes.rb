Rails.application.routes.draw do
  # Your routes here!
  namespace :api, defaults: { format: :json } do
    resources :guests, only: %i(index show) do
      resources :gifts, only: %i(index) do
        resources :parties, only: %i(show)
      end
    end
    resources :gifts, only: %i(show)

    resources :parties, only: %i(index show)
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
