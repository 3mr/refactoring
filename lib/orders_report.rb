class OrdersReport

  def initialize(orders, start_date, end_date)
    @orders = orders
    @start_date = start_date
    @end_date = end_date
  end

  def total_sales_within_date_range
    sum = 0
    @orders.each do |order|
      sum += order.amount if (order.placed_at >= @start_date && order.placed_at <= @end_date)
    end
    sum
  end
end

class Order < Struct.new(:amount, :placed_at)
end
