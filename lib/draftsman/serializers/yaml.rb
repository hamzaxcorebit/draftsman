require 'yaml'

module Draftsman
  module Serializers
    module Yaml
      extend self # makes all instance methods become module methods as well

      def load(string)
          Psych.safe_load(string, permitted_classes: [ActiveSupport::TimeWithZone, ActiveSupport::TimeZone, Time], aliases: true)
      end

      def dump(object)
        YAML.dump object
      end
    end
  end
end
