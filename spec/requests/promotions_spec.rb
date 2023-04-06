# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Promotions', type: :request do
  describe 'post #use' do
    skip 'is skipped' do
      Promotion.new(promo_code: 'ee21e33', discount: 500)
      let(:params) do
        {
          promo_code: 'ee21e33',
          discount: 500
        }
      end

      it 'returns http success' do
        post promotions_use_path, params: params
        expect(response).to redirect_to cart_items_path
      end
    end
  end
end
