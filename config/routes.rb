Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dishes#index'

  resources :dishes do
        collection do
         post :dish_list
        end
      end
end
