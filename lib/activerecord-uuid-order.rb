require 'activerecord-uuid-order/version'
require 'activerecord-uuid-order/core_extensions'

module ActiveRecordUUIDOrder
  def self.included(base)
    base.class_variable_set(:@@implicit_order_column, nil)
  end

  def implicit_order_column=(value)
    class_variable_set(:@@implicit_order_column, value)
  end

  def implicit_order_column
    class_variable_get(:@@implicit_order_column)
  end
end
