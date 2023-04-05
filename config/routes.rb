# frozen_string_literal: true

Rails.application.routes.draw do
  root 'items#top'
  resources :items do
    resources :cart_items, only: %i[index create destroy]
  end
  resources :cart_items, only: %i[index destroy]
  resources :orders, only: %i[create]
end
