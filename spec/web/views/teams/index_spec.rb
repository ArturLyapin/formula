# frozen_string_literal: true

require 'spec_helper'
require_relative '../../../../apps/web/views/teams/index'

describe Web::Views::Teams::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/teams/index.html.erb') }
  let(:view)      { Web::Views::Teams::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
