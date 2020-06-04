Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  resources :events do
    resources :comments, shallow:true
    resources :votes, shallow:true
    resources :event_ms
    resources :invites
  end
  resources :invites do
    resources :users
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :venues
      resources :events do
        resources :comments
        resources :event_ms
        resources :venues
      end
      resources :profile_pages
      resources :users do
        resources :profile_pages
        resources :organizations
      end
      resources :votes
      resources :profile_pages do
        resources :users
        end
      resources :organizations
      resources :organizations do
        resources :org_homepages
        resources :organization_ms
        resources :users
      end
      resources :inbox do
        resources :chats
        resources :messages, shallow:true
      end
      resources :invites do
        resources :users
      end


    end
  end

  resources :events, defaults: { format: :html }
  resources :profile_pages, defaults: { format: :html }
  resources :org_homepages, defaults: { format: :html }
  resources :users, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
  resources :comments, defaults: { format: :html }
  resources :inbox, defaults: { format: :html }
  resources :chats, defaults: { format: :html }
  resources :votes, defaults: { format: :html }
  resources :venues, defaults: { format: :html }
  resources :event_ms, defaults: { format: :html }
  resources :invites, defaults: { format: :html }
end