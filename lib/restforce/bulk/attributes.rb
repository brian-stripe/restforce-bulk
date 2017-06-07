module Restforce
  module Bulk
    module Attributes
      def assign_attributes(value)
        value.each do |attr, value|
          send("#{Restforce::Bulk::StringUtils.underscore(attr.to_s)}=", value) if respond_to?("#{Restforce::Bulk::StringUtils.underscore(attr.to_s)}=")
        end
      end
    end
  end
end
