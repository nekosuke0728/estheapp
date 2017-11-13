require "csv"

CSV.foreach('db/fixtures/seed_categories.csv') do |row|
  Category.seed (:id) do |c|
    c.id = row[0]
    c.name = row[1]
  end
end
