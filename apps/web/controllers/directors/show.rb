# frozen_string_literal: true

module Web
  module Controllers
    module Directors
      class Show
        include Web::Action

        expose :director

        def call(_params)
          # TODO: search correctly
          @director = DirectorRepository.first
        end
      end
    end
  end
end
