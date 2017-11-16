# require "csv"

# CSV.foreach('db/fixtures/seed_product_trouble_types.csv') do |row|
#   ProductTroubleType.seed (:id) do |p|
#     p.id = row[0]
#     p.product_id = row[1]
#     p.skin_trouble_type_id = row[2]
#   end
# end


# 30.times do |i|
#   ProductTroubleType.seed_once(:id) do |p|
#     p.id = i + 1
#     p.product_id =  i + 1
#     p.skin_trouble_type_id = rand(1..9)
#   end
# end