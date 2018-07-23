Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  api_version(module: 'api/v1', path: { value: 'api/v1' }, defaults: { format: :json }) do
    resources :books, only: %i[index show]
    resources :users do
      resources :rents, only: %i[create index]
    end
    resources :book_suggestions, only: %i[create]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  api_version(module: 'api/v1', path: { value: 'api/v1' }, defaults: { format: :json }) do
    resources :users do
      collection do
        resources :sessions, only: [:create] do
          collection do
            post :renew
            post :invalidate_all
          end
        end
      end
    end
  end
end
