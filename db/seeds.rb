require "faker"

puts "Cleaning the db..."
Flat.destroy_all

puts "Creating flats..."
4.times do
  flat = Flat.create!(
    name: "#{Faker::Commerce.color.capitalize} & #{Faker::Commerce.color} Garden Flat #{Faker::Address.city}",
    address: Faker::Address.full_address,
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: rand(75..150),
    number_of_guests: rand(2..8)
  )
  puts "#{flat.name} created!"
end

puts "Seeding complete!"
