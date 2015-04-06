Rails.application.routes.draw do
  devise_for :installs
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'static#index'

  get 'prank/' => 'prank#index'
  get 'message/list'
  get 'prank/new_person'
end
