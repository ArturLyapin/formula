# frozen_string_literal: true

module Web
  module Controllers
    module Teams
      class Show
        include Web::Action

        expose :team

        def call(params)
          @team = TeamRepository.new.find(params[:id])
        end
      end
    end
  end
end
