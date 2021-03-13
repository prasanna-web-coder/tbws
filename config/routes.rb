Rails.application.routes.draw do
  root to: 'public#main'
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: {sessions: 'sessions', registrations: 'registrations'}
  end
end
