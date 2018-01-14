# frozen_string_literal: true

module Web
  module Views
    module Teams
      class Show
        include Web::View

        def director_name(team)
          team.director&.fullname || 'No director'
        end
      end
    end
  end
end
