require "ans-register_json/version"

module Ans
  module RegisterJson
    class Config
      def initialize
        @data_method = "data"
        @dump_method = "dump_data"
        @json_data_name = "data"
      end

      attr_accessor :data_method, :dump_method, :json_data_name
    end

    def self.config
      @config ||= Config.new
    end
    def self.configure
      yield self.config
    end

    module Controller
      def self.included(m)
        config = RegisterJson.config

        define_method config.data_method.to_sym do
          @ans_register_json_data ||= {}
        end
      end
    end
    module View
      def self.included(m)
        config = RegisterJson.config

        define_method config.dump_method.to_sym do
          raw '<script type="text/javascript">window.'+config.json_data_name+' = '+@ans_register_json_data.to_json+'</script>'
        end
      end
    end
  end
end
