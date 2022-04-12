Rails.application.routes.draw do
  default_url_options :host => ENV['API_URL']
  namespace :api, defaults: { format: :json } do
    resources :users, only: %w[show update]
  end

  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }
    resources :teams, only: [:index]

    resources :courses, only: [:index, :show] do
      resources :teams do
        resources :infos, only: [:index, :update]
        resources :subscriptions, only: [:create, :destroy]
      end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
