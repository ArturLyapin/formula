# frozen_string_literal: true

require 'spec_helper'

describe Team do
  it 'can be initialized with attributes' do
    team = Team.new(name: 'Refactoring')
    team.name.must_equal 'Refactoring'
  end
end
