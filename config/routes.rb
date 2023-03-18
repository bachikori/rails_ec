# frozen_string_literal: true

Rails.application.routes.draw do
  root 'items#top'
  resources :items do
    resources :cart_items
  end
  resources :cart_items

  resources :carts
end
