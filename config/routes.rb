Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: {sessions: 'sessions', registrations: 'registrations'}
  end

  get '/' => 'home#index'
end
