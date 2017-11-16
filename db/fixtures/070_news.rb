require "csv"

CSV.foreach('db/fixtures/seed_news.csv') do |row|
  News.seed (:id) do |n|
    n.id = row[0]
    n.news_type_id = row[1]
    n.title = row[2]
    n.content = row[3]
    n.state = row[4]
  end
end
