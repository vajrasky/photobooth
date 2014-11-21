Rails.application.routes.draw do

  root  'application#index'
  # get   'create',           to: 'application#create'
  # post  'save',             to: 'application#save',        as: 'save_people'

  resource :people, path: 'orang'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
