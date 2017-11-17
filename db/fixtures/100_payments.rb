require "csv"

CSV.foreach('db/fixtures/seed_payments.csv') do |row|
  Payment.seed (:id) do |p|
    p.id = row[0]
    p.name = row[1]
  end
end