json.extract! orderproduct, :id, :order_id, :product_id, :quantity, :sub_total, :created_at, :updated_at
json.url orderproduct_url(orderproduct, format: :json)
