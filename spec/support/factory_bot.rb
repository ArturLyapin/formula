# frozen_string_literal: true

# This loads all factory girl files
# Assuming all of them are in 'spec/factories/'
Dir[Hanami.root.join('spec/factories/*.rb')].each { |f| require f }

# If you are not using Minitest, you need to replace these 3 lines for others relative to the library you are using
# Take a look at this link to know what you should put here: https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
class Minitest::Spec
  include FactoryBot::Syntax::Methods
end

# Override Factory girl creation, in order to work with Repositories
# This assumes all entity has an 'EntityRepository' class
FactoryBot.define do
  to_create do |instance|
    # This works with Hanami > 0.9
    # If you are using an older version, just remove #new method in line below
    repository = Object.const_get("#{instance.class}Repository").new
    repository.create(instance)
  end
end

# Overrides builtin Create strategy
# This is responsible to return the persisted instance to :after_create callback
# and returns the persisted entity when using :create method
module FactoryBot
  module Strategy
    class Create
      attr_reader :evaluation

      def association(runner)
        runner.run
      end

      def result(evaluation)
        @evaluation = evaluation
        persisted = evaluation.create(instance)

        evaluation.notify(:after_build, instance)
        evaluation.notify(:before_create, instance)
        evaluation.notify(:after_create, persisted)
        persisted
      end

      private

      def instance
        evaluation.object
      end
    end
  end
end
