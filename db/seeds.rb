puts "cleaning database..."
Pet.destroy_all
User.destroy_all
user_1 = User.create!(email: "test@test.com", password: "123456", username: "rita_")
user_2 = User.create!(email: "test@test1.com", password: "123456", username: "nevea")
user_3 = User.create!(email: "test2@test.com", password: "123456", username: "robert")
user_4 = User.create!(email: "test3@test.com", password: "123456", username: "riru")

puts "Creating pets..."

pet1 = { name: 'whiskers', species: 'cat', breed: 'ragdoll', colors: 'white', details: 'a pet has gone missing.', missing: 'true', street:'keizersgracht 1', city: 'amsterdam', country: 'netherlands', zip_code: '1015 aa', user_id:1}
pet2 = { name: 'shadow', species: 'cat', breed: 'ragdoll', colors: 'seal ', details: 'help us find our missing pet - a pet with fur of a certain color.', missing: 'true', street:'prinsengracht 12', city: 'amsterdam', country: 'netherlands', zip_code: '1015 dk', user_id:1}
pet3 = { name: 'luna', species: 'cat', breed: 'bengal', colors: 'silver', details: 'our family is heartbroken; our pet is missing from a specific location.', missing: 'true', street:'herengracht 100', city: 'amsterdam', country: 'netherlands', zip_code: '1015 bs', user_id:1}
pet4 = { name: 'oliver', species: 'cat', breed: 'bengal', colors: 'brown', details: 'urgent: a pet has disappeared in a particular location.', missing: 'true', street:'damstraat 1', city: 'haarlem', country: 'netherlands', zip_code: '2011 ha', user_id:1}
pet5 = { name: 'bella', species: 'cat', breed: 'sphynx', colors: 'black', details: 'missing: a pet with distinctive markings.', missing: 'true', street:'koningstraat 5', city: 'haarlem', country: 'netherlands', zip_code: '2011 tb', user_id:1}
pet6 = { name: 'simba', species: 'cat', breed: 'sphynx', colors: 'peach', details: 'our family is heartbroken; our pet is missing.', missing: 'true', street:'binnenweg 7', city: 'alkmaar', country: 'netherlands', zip_code: '1811 jb', user_id:1}
pet7 = { name: 'chloe', species: 'cat', breed: 'maine coon', colors: 'brown tabby', details: 'please be on the lookout for a pet with certain color fur.', missing: 'true', street:'langestraat 23', city: 'alkmaar', country: 'netherlands', zip_code: '1811 jd', user_id:1}
pet8 = { name: 'tiger', species: 'cat', breed: 'maine coon', colors: 'cream', details: 'a pet went missing on a specific date from a particular location.', missing: 'true', street:'grote markt 1', city: 'alkmaar', country: 'netherlands', zip_code: '1811 ke', user_id:2}
pet9 = { name: 'misty', species: 'cat', breed: 'siamese', colors: 'seal point ', details: 'lost pet alert: a pet is missing in a specific location.', missing: 'true', street:'hoogstraat 5', city: 'zaandam', country: 'netherlands', zip_code: '1506 pc', user_id:2}
pet10 = { name: 'max', species: 'cat', breed: 'siamese', colors: 'lilac point', details: 'desperately seeking a pet last seen in a particular location.', missing: 'true', street:'dam 1', city: 'zaandam', country: 'netherlands', zip_code: '1506 bc', user_id:2}
pet11 = { name: 'muffin', species: 'cat', breed: 'persian', colors: 'white', details: 'a pet has been missing since a specific date.', missing: 'true', street:'oudezijds voorburgwal 197', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ex', user_id:2}
pet12 = { name: 'nala', species: 'cat', breed: 'persian', colors: 'cream', details: 'lost: a pet with a distinctive feature, in a specific location.', missing: 'true', street:'nieuwezijds voorburgwal 56', city: 'amsterdam', country: 'netherlands', zip_code: '1012 sc', user_id:2}
pet13 = { name: 'gizmo', species: 'cat', breed: 'persian', colors: 'chocolate', details: 'help us find our furry friend, a pet with certain color fur.', missing: 'true', street:'oude kerkplein 23', city: 'amsterdam', country: 'netherlands', zip_code: '1012 gx', user_id:2}
pet14 = { name: 'cleo', species: 'cat', breed: 'maine coon', colors: 'silver', details: 'missing since a specific date: a pet last seen in a particular location.', missing: 'true', street:'kalverstraat 92', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ph', user_id:3}
pet15 = { name: 'charlie', species: 'cat', breed: 'bengal', colors: 'blue', details: 'our dear pet has gone missing - please help us find them.', missing: 'true', street:'westzijde 120', city: 'zaandam', country: 'netherlands', zip_code: '1506 ek', user_id:3}
pet16 = { name: 'max', species: 'dog', breed: 'labrador retriever', colors: 'yellow', details: 'a pet is missing; we are offering a reward for their safe return.', missing: 'true', street:'peperstraat 10', city: 'haarlem', country: 'netherlands', zip_code: '2011 cz', user_id:3}
pet17 = { name: 'bella', species: 'dog', breed: 'labrador retriever', colors: 'chocolate', details: 'lost pet alert: a pet missing from a specific location since a certain date.', missing: 'true', street:'kerkplein 21', city: 'haarlem', country: 'netherlands', zip_code: '2011 rr', user_id:3}
pet18 = { name: 'charlie', species: 'dog', breed: 'german shepherd', colors: 'black', details: 'have you seen a pet in a specific location area?', missing: 'true', street:'stationsplein 9', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ab', user_id:3}
pet19 = { name: 'lucy', species: 'dog', breed: 'german shepherd', colors: 'sable', details: 'our pet with a distinctive feature is missing - please share!', missing: 'true', street:'kruisstraat 4', city: 'haarlem', country: 'netherlands', zip_code: '2011 px', user_id:3}
pet20 = { name: 'cooper', species: 'dog', breed: 'golden retriever', colors: 'cream', details: 'urgent: a pet has disappeared; any information is appreciated.', missing: 'true', street:'prins hendrikkade 73', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ad', user_id:3}
pet21 = { name: 'daisy', species: 'dog', breed: 'golden retriever', colors: 'dark gold', details: 'missing since a specific date: a pet last seen wearing a collar.', missing: 'true', street:'begijnhof 30', city: 'amsterdam', country: 'netherlands', zip_code: '1012 wv', user_id:3}
pet22 = { name: 'rocky', species: 'dog', breed: 'french bulldog', colors: 'fawn', details: 'a pet has gone missing - please contact us with any information.', missing: 'true', street:'zaanweg 67', city: 'amsterdam', country: 'netherlands', zip_code: '1521 dk', user_id:3}
pet23 = { name: 'sadie', species: 'dog', breed: 'french bulldog', colors: 'brindle', details: 'help us reunite with our furry family member, a pet.', missing: 'true', street:'lijnbaansgracht 234', city: 'wormerveer', country: 'netherlands', zip_code: '1017 ph', user_id:4}
pet24 = { name: 'duke', species: 'dog', breed: 'beagle', colors: 'black, white, and brown', details: 'missing: a pet disappeared in a specific area on a certain date.', missing: 'true', street:'oosterdokskade 3', city: 'amsterdam', country: 'netherlands', zip_code: '1011 ad', user_id:4}
pet25 = { name: 'zoe', species: 'dog', breed: 'beagle', colors: 'lemon and white', details: 'a pet with distinctive markings is missing - please help us find them.', missing: 'true', street:'brouwersgracht 160', city: 'amsterdam', country: 'netherlands', zip_code: '1013 ga', user_id:4}
pet26 = { name: 'buddy', species: 'dog', breed: 'dachshund', colors: 'red', details: 'lost pet alert: a pet went missing from a specific location.', missing: 'true', street:'dijk 34', city: 'amsterdam', country: 'netherlands', zip_code: '1131 cn', user_id:4}
pet27 = { name: 'molly', species: 'dog', breed: 'dachshund', colors: 'black and tan', details: 'our beloved pet is missing; please keep an eye out for them.', missing: 'true', street:'dorpsstraat 74', city: 'volendam', country: 'netherlands', zip_code: '1151 at', user_id:4}
pet28 = { name: 'bailey', species: 'dog', breed: 'dachshund', colors: 'chocolate and tan', details: 'missing since a specific date: a pet last seen near a particular location.', missing: 'true', street:'gedempte oude gracht 67', city: 'broek in waterland', country: 'netherlands', zip_code: '2011 gm', user_id:4}
pet29 = { name: 'teddy', species: 'dog', breed: 'german shepherd', colors: ' solid black', details: 'urgent: a pet is missing - please contact us if you have any information.', missing: 'true', street:'zuideinde 12', city: 'haarlem', country: 'netherlands', zip_code: '1541 ca', user_id:4}
pet30 = { name: 'ruby', species: 'dog', breed: 'labrador retriever', colors: 'black', details: 'help us bring a pet home; missing since a certain date from a specific location.', missing: 'true', street:'melkmarkt 1', city: 'amsterdam', country: 'netherlands', zip_code: '1011 pb', user_id:4}

[pet1, pet2, pet3, pet4, pet5, pet6, pet7, pet8, pet9, pet10, pet11, pet12, pet13, pet14, pet15, pet16, pet17, pet18, pet19, pet20, pet21, pet22, pet23, pet24, pet25, pet26, pet27, pet28, pet29, pet30].each do |attributes|
  data = Pet.create!(attributes)
  puts "Created #{data.name}"
end
puts "Finished!"
