Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'site/home#index'

  # SITE
  namespace :site do
    root to: 'home#index'
  end

  # ADMIN
  namespace :admin do
    root to: 'home#index'
    resources :diagrams, only: [:index]
    # resources :companies

    # CADASTRO BASICO
    namespace :cadastro_basico do
    end

    # RELATORIO
    namespace :relatorios do
    end
  end
end
