# require "csv"

# CSV.foreach('db/fixtures/seed_products.csv') do |row|
#   Product.seed (:id) do |p|
#     p.id = row[0]
#     p.name = row[1]
#     p.brand_id = row[2]
#     p.category_id = row[3]
#     p.item_type_id = row[4]
#     p.price = row[5]
#     p.status = row[6]
#     p.description = row[7]
#   end
# end


30.times do |i|
  Product.seed_once(:id) do |p|
    p.id = i + 1
    p.name = "#{ i + 1 }番目の商品"
    p.description = "#{ i + 1 }番目の商品説明文"
    p.price = (i + 1) * 100
    p.category_id = rand(1..9)
    p.brand_id = rand(1..5)
    p.item_type_id = rand(1..43)
    p.status = rand(0..1)
  end
end