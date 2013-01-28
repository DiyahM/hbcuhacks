Hbcuhacks::Application.routes.draw do
  get "pages/index"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'pages#index'
end
