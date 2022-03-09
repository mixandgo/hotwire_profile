Rails.application.routes.draw do
  devise_for :users
  root "site#index"
end
