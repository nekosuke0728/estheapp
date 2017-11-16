require "csv"

CSV.foreach('db/fixtures/seed_news_types.csv') do |row|
  NewsType.seed (:id) do |n|
    n.id = row[0]
    n.name = row[1]
  end
end