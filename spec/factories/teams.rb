# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    name { SecureRandom.hex }

    initialize_with { new(attributes) }
  end
end
