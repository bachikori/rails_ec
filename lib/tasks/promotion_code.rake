# frozen_string_literal: true

namespace :promotion_code do
  desc 'generate 10 promotion_code'
  task generate: :environment do
    10.times do
      Promotion.create!(
        promo_code: SecureRandom.alphanumeric(7),
        discount: 500
      )
    end
  end
end
