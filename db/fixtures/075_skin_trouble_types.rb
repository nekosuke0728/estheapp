require "csv"

CSV.foreach('db/fixtures/seed_skin_trouble_types.csv') do |row|
  SkinTroubleType.seed (:id) do |s|
    s.id = row[0]
    s.name = row[1]
  end
end