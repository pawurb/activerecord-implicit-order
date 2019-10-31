require 'activerecord-uuid-order/version'
require 'activerecord-uuid-order/core_extensions'

module ActiveRecordUUIDOrder
  included do
    def self.implicit_order_column=(value)
      @@implicit_order_column = value
    end

    def self.implicit_order_column
      @@implicit_order_column
    end
  end
end
