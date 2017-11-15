json.extract! order_product, :id, :order_id, :product_id, :quantity, :sub_total, :created_at, :updated_at
json.url order_product_url(orderproduct, format: :json)
