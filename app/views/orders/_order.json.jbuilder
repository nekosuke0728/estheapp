json.extract! order, :id, :user_id, :total_price, :payment_id, :created_at, :updated_at
json.url order_url(order, format: :json)
