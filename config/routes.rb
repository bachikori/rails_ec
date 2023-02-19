# frozen_string_literal: true

Rails.application.routes.draw do
  root 'items#top'
  resources :items
end
