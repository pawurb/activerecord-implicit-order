require 'activerecord-uuid-order/version'
require 'activerecord-uuid-order/core_extensions'

module ActiveRecordUUIDOrder
  def implicit_order_column=(value)
    @@implicit_order_column = value
  end

  def implicit_order_column
    @@implicit_order_column
  end
end
