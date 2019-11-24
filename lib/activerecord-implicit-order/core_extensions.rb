module ActiveRecord
  module FinderMethods
    def ordered_relation
      if order_values.empty? && (implicit_order_column || primary_key)
        if implicit_order_column && primary_key && implicit_order_column != primary_key
          order(arel_attribute(implicit_order_column).asc, arel_attribute(primary_key).asc)
        else
          order(arel_attribute(implicit_order_column || primary_key).asc)
        end
      else
        self
      end
    end
  end
end
