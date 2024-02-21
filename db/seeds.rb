TYPE = %w[Flat House Habitation Castle Condo Mansion Apartment Loft]

puts "Cleaning the DB"
Flat.destroy_all
puts "DB cleaned"

puts "Creating new flats..."
15.times do
  flat = Flat.new({
    name: "#{TYPE.sample} #{Faker::Address.city}",
    address: Faker::Address.full_address,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    price_per_night: Faker::Number.between(from: 30, to: 1000),
    number_of_guests: Faker::Number.between(from: 1, to: 16),
    })
  flat.save!
  puts "#{flat.name} created"
end
puts "All new flats created"
