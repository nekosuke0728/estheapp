json.extract! reservation, :id, :user_id, :staff_id, :esthe_menu_id, :start_at, :comment, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
