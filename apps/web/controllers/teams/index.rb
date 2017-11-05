# frozen_string_literal: true

module Web
  module Controllers
    module Teams
      class Index
        include Web::Action

        expose :teams

        def call(_params)
          @teams = TeamRepository.new.all
        end
      end
    end
  end
end
