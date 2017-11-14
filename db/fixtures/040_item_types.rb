require "csv"

CSV.foreach('db/fixtures/seed_item_types.csv') do |row|
  ItemType.seed (:id) do |i|
    i.id = row[0]
    i.category_id = row[1]
    i.name = row[2]
  end
end