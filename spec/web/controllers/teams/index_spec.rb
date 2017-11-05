require 'spec_helper'
require_relative '../../../../apps/web/controllers/teams/index'

describe Web::Controllers::Teams::Index do
  let(:action) { Web::Controllers::Teams::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end

  describe 'without teams' do
    it 'returns empty collection' do
      action.call(params)
      action.teams.must_equal []
    end
  end

  describe 'with teams' do
    before { @team = create(:team) }

    it 'returns teams' do
      action.call(params)
      action.teams.must_equal [@team]
    end

    after { TeamRepository.new.clear }
  end
end
