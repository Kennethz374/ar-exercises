require_relative '../setup'
Surrey (annual_revenue of 224000, carries women's apparel only)
Whistler (annual_revenue of 1900000 carries men's apparel only)
Yaletown (annual_revenue of 430000 carries men's and women's apparel)

puts "Exercise 1"
puts "----------"
Store.create(name: "Burnaby", annual_revenue:300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue:1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue:190000, mens_apparel: true, womens_apparel: false)

puts Store.count

