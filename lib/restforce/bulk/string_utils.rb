module Restforce
  module Bulk
    module StringUtils
      def self.camelize(string)
        string.split('_').map(&:capitalize).join('')
      end

      def self.underscore(string)
        string.split(/(?=[A-Z][a-z]*)/).join('_').downcase
      end
    end
  end
end
