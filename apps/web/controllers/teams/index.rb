module Web::Controllers::Teams
  class Index
    include Web::Action

    expose :teams

    def call(params)
      @teams = TeamRepository.new.all
    end
  end
end
