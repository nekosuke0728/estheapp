require "csv"

CSV.foreach('db/fixtures/seed_staffs.csv') do |row|
  Staff.seed (:id) do |s|
    s.id = row[0]
    s.email = row[1]
    s.password = row[2]
    s.name = row[3]
    s.owner = row[4]
  end
end
