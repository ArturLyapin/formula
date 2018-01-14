# frozen_string_literal: true

class TeamRepository < Hanami::Repository
  associations do
    has_one :director
  end

  def find_with_director(id)
    aggregate(:director).where(id: id).map_to(Team).one
  end
end
