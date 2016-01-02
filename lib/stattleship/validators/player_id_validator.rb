module Stattleship
  module Validators
    class PlayerIdValidator < Stattleship::Validators::BaseValidator
      def validate
        validates_sports_prefix
      end
    end
  end
end