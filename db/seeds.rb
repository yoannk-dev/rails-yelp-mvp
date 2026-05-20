puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
20.times do |i|
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: Restaurant::ACCEPTED_CATEGORIES.sample, phone_number: Faker::PhoneNumber.cell_phone_in_e164)
end

puts "Finished! Created #{Restaurant.count} restaurants."
