Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :venues
      resources :comments
      resources :events do
        resources :comments, shallow:true
      end
      resources :profile_pages
      resources :users do
        resources :profile_pages
      end
      resources :votes
      resources :profile_pages do
        resources :users
      end
      resources :organizations
      resources :organizations do
        resources :org_homepages
      end
      resources :chats do
        resources :messages
      end


    end
  end

  resources :events, defaults: { format: :html }
  resources :profile_pages, defaults: { format: :html }
  resources :org_homepages, defaults: { format: :html }
  resources :users, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
  resources :comments, defaults: { format: :html }
  resources :chats, defaults: { format: :html }
  resources :votes, defaults: { format: :html }
  resources :venues, defaults: { format: :html }
end
