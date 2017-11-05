# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/

root to: 'teams#index'

resources :teams, only: [:index, :show]
