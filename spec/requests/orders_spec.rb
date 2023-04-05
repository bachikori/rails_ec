# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Orders', type: :request do
  describe 'post #create' do
    let(:params) do
      { session: {
        first_name: '田中',
        last_name: '太郎',
        email: 'tanaka@gmail.com',
        address: '東京都',
        card_name: 'TAROTANAKA',
        card_number: 12_333_331_211_111,
        card_expiration: 1233,
        card_cvv: 123,
        cart_id: 12
      } }
    end

    it 'returns http success' do
      post orders_path, params: params
      expect(response).to redirect_to root_path
    end
  end
end
