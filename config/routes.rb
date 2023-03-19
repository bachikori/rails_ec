# frozen_string_literal: true

Rails.application.routes.draw do
  root 'items#top'
  resources :items do
    resources :cart_items, only: [:create]
  end
  resources :cart_items, only: %i[index destroy]
end
