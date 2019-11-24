require 'activerecord-implicit-order/version'
require 'activerecord-implicit-order/core_extensions'

module ActiveRecordImplicitOrder
  def implicit_order_column=(value)
    class_variable_set(:@@implicit_order_column, value)
  end

  def implicit_order_column
    class_variable_get(:@@implicit_order_column)
  rescue NameError
    class_variable_set(:@@implicit_order_column, nil)
  end
end
