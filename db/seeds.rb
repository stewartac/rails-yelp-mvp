puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '07799603904'.to_i, category: "indian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '079879603904'.to_i, category: "italian" }
pizza_hut = { name: "Pizza Hut", address: "Earls court Road, London SW2 7JE", phone_number: '08899603904'.to_i, category: "italian" }
ivy = { name: "The Ivy", address: "Covent Garden, London SW4 5RJ", phone_number: '01869603904'.to_i, category: "British" }
cambio_de_tercio = { name: "Cambio de Tercio", address: "South Kensington, London SW2 7JE", phone_number: '01786603904'.to_i, category: "Spanish" }

[dishoom, pizza_east, pizza_hut, ivy, cambio_de_tercio].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
