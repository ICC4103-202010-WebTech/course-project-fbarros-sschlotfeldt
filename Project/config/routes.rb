Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  "pages#home"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do get '/users/sign_out' => 'devise/sessions#destroy' end

  get 'events/org_event'
  get 'events/report_event/:id', to: "events#report_event", as: 'report_event'
  get 'comments/report_comment/:id', to: "comments#report_comments", as: 'report_comment'
  get 'events/report_event_btn/:id', to: "events#report_event_btn", as: 'report_event_btn'

  resources :events do
    resources :comments, shallow:true
    resources :votes, shallow:true
    resources :event_ms
    resources :invites
  end
  resources :invites do
    resources :users
    resources :event
  end

  post 'comments/report_event'

  post 'votes/new_vote'

  post 'users/destroy_u'
  post 'users/start_chat'
  post 'users/accept_invite'

  post 'chats/send_msg'

  post 'events/start_vote'
  post 'events/end_vote'
  post 'events/vote_link'

  post 'invites/invite'

  post 'inbox/open_chat'

  get 'users/information/:id', to: "users#information", as: 'info'


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :venues
      resources :events do
        resources :comments
        resources :event_ms
        resources :venues
        resources :votes
      end
      resources :users do
        resources :organizations
      end
      resources :votes
      resources :organizations
      resources :organizations do
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