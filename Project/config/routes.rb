Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        resources :comments, shallow:true
      end
      resources :profile_pages do
        resources :users
      end
      resources :org_homepages do
        resources :organizations
      end
    end
  end

  resources :events, defaults: { format: :html }
  resources :profile_pages, defaults: { format: :html }
  resources :org_homepages, defaults: { format: :html }
end
