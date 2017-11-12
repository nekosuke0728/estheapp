json.extract! news, :id, :news_type_id, :content, :state, :created_at, :updated_at
json.url news_url(news, format: :json)
