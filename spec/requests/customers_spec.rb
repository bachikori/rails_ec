# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  describe 'post /create' do
    it 'returns http success' do
      post '/customers/create'
      expect(response).to redirect_to cart_items_path
    end
  end
end
