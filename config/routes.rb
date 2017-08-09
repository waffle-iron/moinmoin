# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '(:locale)', locale: /en|de|fr/ do
    root to: 'dashboard#index'
  end
end
