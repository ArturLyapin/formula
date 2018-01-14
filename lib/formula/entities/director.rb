# frozen_string_literal: true

class Director < Hanami::Entity
  def fullname
    [firstname, lastname].join(' ')
  end
end
