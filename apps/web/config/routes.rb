# frozen_string_literal: true

# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/

root to: 'teams#index'

resources :teams, only: %i[index show]
