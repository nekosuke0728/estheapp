json.extract! cart_product, :id, :cart_id, :product_id, :quantity, :status, :created_at, :updated_at
json.url cart_product_url(cart_product, format: :json)
