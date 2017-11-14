json.extract! news_type, :id, :name, :created_at, :updated_at
json.url news_type_url(news_type, format: :json)
