puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "558 256 24", category: "french"}

pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "558 665 82", category: "italian"}

villa_etang_blanc = {name: "Villa etang blanc", address: "D432 Seignosse", phone_number: "05 58 72 80 15", category: "french"}

instant_gourmet =  {name: "instant Gourmet", address: "1300 Avenue du Pyla, 40600 Biscarrosse", phone_number: "05 58 04 28 57", category: "french"}

la_mimizane = {name: "la mimizane", address: "13 Avenue de Bordeaux, 40200 Mimizan France", phone_number: "05 58 07 68 76", category: "italian"}


[dishoom, pizza_east, villa_etang_blanc, instant_gourmet, la_mimizane].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
