Rails.application.routes.draw do
  resources :users
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :items do
    member do
      delete :delete_attachments
    end
  end

end
