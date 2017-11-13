require "csv"

CSV.foreach('db/fixtures/seed_brands.csv') do |row|
  Brand.seed (:id) do |b|
    b.id = row[0]
    b.name = row[1]
  end
end