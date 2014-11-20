Rails.application.routes.draw do

  root 'application#index'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
