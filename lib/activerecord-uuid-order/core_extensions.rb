module ActiveRecord
  module FinderMethods
    def ordered_relation
      if order_values.empty? && (implicit_order_column || primary_key)
        order(arel_attribute(implicit_order_column || primary_key).asc)
      else
        self
      end
    end
  end
end
