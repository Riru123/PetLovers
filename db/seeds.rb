puts "cleaning database..."
Pet.destroy_all
User.destroy_all
user_1 = User.create!(email: "rita@gmail.com", password: "123456", username: "Rita", phone: "+31 6 1234 5678")
user_2 = User.create!(email: "nivea@gmail.com", password: "123456", username: "Nivea", phone: "+31 6 2345 6789")
user_3 = User.create!(email: "robert@gmail.com", password: "123456", username: "Robert", phone: "+31 6 3456 7890")
user_4 = User.create!(email: "riru@gmail.com", password: "123456", username: "Riru", phone: "+31 6 4567 8901")

puts "Creating pets..."

require "open-uri"

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701181556/PetLovers/Whiskers.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'ragdoll', colors: 'white', details: 'a pet has gone missing.', missing: 'true', street:'keizersgracht 1', city: 'amsterdam', country: 'netherlands', zip_code: '1015 aa', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save!

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182807/PetLovers/Ruby.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'labrador retriever', colors: 'black', details: 'help us bring a pet home; missing since a certain date from a specific location.', missing: 'true', street:'melkmarkt 1', city: 'amsterdam', country: 'netherlands', zip_code: '1011 pb', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182786/PetLovers/Teddy.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'german shepherd', colors: ' solid black', details: 'urgent: a pet is missing - please contact us if you have any information.', missing: 'true', street:'zuideinde 12', city: 'haarlem', country: 'netherlands', zip_code: '1541 ca', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182763/PetLovers/Bailey.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'dachshund', colors: 'chocolate and tan', details: 'missing since a specific date: a pet last seen near a particular location.', missing: 'true', street:'gedempte oude gracht 67', city: 'broek in waterland', country: 'netherlands', zip_code: '2011 gm', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182127/PetLovers/Muffin.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'persian', colors: 'white', details: 'a pet has been missing since a specific date.', missing: 'true', street:'oudezijds voorburgwal 197', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ex', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182203/PetLovers/Gizmo.jpg")
pet = Pet.new(name: 'gizmo', category: 'I found', species: 'cat', breed: 'persian', colors: 'chocolate', details: 'help us find our furry friend, a pet with certain color fur.', missing: 'true', street:'oude kerkplein 23', city: 'amsterdam', country: 'netherlands', zip_code: '1012 gx', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182161/PetLovers/Nala.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'persian', colors: 'cream', details: 'found: a pet with a distinctive feature, in a specific location.', missing: 'true', street:'nieuwezijds voorburgwal 56', city: 'amsterdam', country: 'netherlands', zip_code: '1012 sc', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182508/PetLovers/Daisy.jpg")
pet = Pet.new(name: 'daisy', category: 'I found', species: 'dog', breed: 'golden retriever', colors: 'dark gold', details: 'missing since a specific date: a pet last seen wearing a collar.', missing: 'true', street:'begijnhof 30', city: 'amsterdam', country: 'netherlands', zip_code: '1012 wv', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182432/PetLovers/Lucy.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'german shepherd', colors: 'sable', details: 'our pet with a distinctive feature is missing - please share!', missing: 'true', street:'kruisstraat 4', city: 'haarlem', country: 'netherlands', zip_code: '2011 px', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182466/PetLovers/Cooper.jpg")
pet = Pet.new(name: 'cooper', category: 'I found', species: 'dog', breed: 'golden retriever', colors: 'cream', details: 'urgent: a pet has disappeared; any information is appreciated.', missing: 'true', street:'prins hendrikkade 73', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ad', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182572/PetLovers/Sadie.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'french bulldog', colors: 'brindle', details: 'help us reunite with our furry family member, a pet.', missing: 'true', street:'lijnbaansgracht 234', city: 'wormerveer', country: 'netherlands', zip_code: '1017 ph', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182269/PetLovers/Charlie.jpg")
pet = Pet.new(name: 'charlie', category: 'I found', species: 'cat', breed: 'bengal', colors: 'blue', details: 'our dear pet has gone missing - please help us find them.', missing: 'true', street:'westzijde 120', city: 'zaandam', country: 'netherlands', zip_code: '1506 ek', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182607/PetLovers/Duke.jpg")
pet = Pet.new(name: 'duke', category: 'I found', species: 'dog', breed: 'beagle', colors: 'black, white, and brown', details: 'missing: a pet disappeared in a specific area on a certain date.', missing: 'true', street:'oosterdokskade 3', city: 'amsterdam', country: 'netherlands', zip_code: '1011 ad', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182296/PetLovers/Max-dog.jpg")
pet = Pet.new(name: 'max', category: 'I found', species: 'dog', breed: 'labrador retriever', colors: 'yellow', details: 'a pet is missing; we are offering a reward for their safe return.', missing: 'true', street:'peperstraat 10', city: 'haarlem', country: 'netherlands', zip_code: '2011 cz', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182227/PetLovers/Cleo.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'maine coon', colors: 'silver', details: 'missing since a specific date: a pet last seen in a particular location.', missing: 'true', street:'kalverstraat 92', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ph', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701181814/PetLovers/Bella.jpg")
pet = Pet.new(name: 'bella', category: 'I lost', species: 'dog', breed: 'labrador retriever', colors: 'chocolate', details: 'lost pet alert: a pet missing from a specific location since a certain date.', missing: 'true', street:'kerkplein 21', city: 'haarlem', country: 'netherlands', zip_code: '2011 rr', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182543/PetLovers/Rocky.jpg")
pet = Pet.new(name: 'rocky', category: 'I lost', species: 'dog', breed: 'french bulldog', colors: 'fawn', details: 'a pet has gone missing - please contact us with any information.', missing: 'true', street:'zaanweg 67', city: 'amsterdam', country: 'netherlands', zip_code: '1521 dk', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182635/PetLovers/Zoe.jpg")
pet = Pet.new(name: 'zoe', category: 'I lost', species: 'dog', breed: 'beagle', colors: 'lemon and white', details: 'a pet with distinctive markings is missing - please help us find them.', missing: 'true', street:'brouwersgracht 160', city: 'amsterdam', country: 'netherlands', zip_code: '1013 ga', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182675/PetLovers/Buddy.jpg")
pet = Pet.new(name: 'buddy', category: 'I lost', species: 'dog', breed: 'dachshund', colors: 'red', details: 'lost pet alert: a pet went missing from a specific location.', missing: 'true', street:'dijk 34', city: 'amsterdam', country: 'netherlands', zip_code: '1131 cn', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182057/PetLovers/Misty.jpg")
pet = Pet.new(name: 'misty', category: 'I lost', species: 'cat', breed: 'siamese', colors: 'seal point ', details: 'lost pet alert: a pet is missing in a specific location.', missing: 'true', street:'hoogstraat 5', city: 'zaandam', country: 'netherlands', zip_code: '1506 pc', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182713/PetLovers/Molly.jpg")
pet = Pet.new(name: 'molly', category: 'I lost', species: 'dog', breed: 'dachshund', colors: 'black and tan', details: 'our beloved pet is missing; please keep an eye out for them.', missing: 'true', street:'dorpsstraat 74', city: 'volendam', country: 'netherlands', zip_code: '1151 at', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182101/PetLovers/Max.jpg")
pet = Pet.new(name: 'max', category: 'I lost', species: 'cat', breed: 'siamese', colors: 'lilac point', details: 'desperately seeking a pet last seen in a particular location.', missing: 'true', street:'dam 1', city: 'zaandam', country: 'netherlands', zip_code: '1506 bc', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182011/PetLovers/Chloe.jpg")
pet = Pet.new(name: 'chloe', category: 'I lost', species: 'cat', breed: 'maine coon', colors: 'brown tabby', details: 'please be on the lookout for a pet with certain color fur.', missing: 'true', street:'langestraat 23', city: 'alkmaar', country: 'netherlands', zip_code: '1811 jd', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182033/PetLovers/Tiger.jpg")
pet = Pet.new(name: 'tiger', category: 'I lost', species: 'cat', breed: 'maine coon', colors: 'cream', details: 'a pet went missing on a specific date from a particular location.', missing: 'true', street:'grote markt 1', city: 'alkmaar', country: 'netherlands', zip_code: '1811 ke', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701181972/PetLovers/Simba.jpg")
pet = Pet.new(name: 'simba', category: 'I lost', species: 'cat', breed: 'sphynx', colors: 'peach', details: 'our family is heartbroken; our pet is missing.', missing: 'true', street:'binnenweg 7', city: 'alkmaar', country: 'netherlands', zip_code: '1811 jb', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701181814/PetLovers/Bella.jpg")
pet = Pet.new(name: 'bella', category: 'I lost', species: 'cat', breed: 'sphynx', colors: 'black', details: 'missing: a pet with distinctive markings.', missing: 'true', street:'koningstraat 5', city: 'haarlem', country: 'netherlands', zip_code: '2011 tb', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701181724/PetLovers/Oliver.jpg")
pet = Pet.new(name: 'oliver', category: 'I lost', species: 'cat', breed: 'bengal', colors: 'brown', details: 'urgent: a pet has disappeared in a particular location.', missing: 'true', street:'damstraat 1', city: 'haarlem', country: 'netherlands', zip_code: '2011 ha', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701181694/PetLovers/Luna.jpg")
pet = Pet.new(name: 'luna', category: 'I lost', species: 'cat', breed: 'bengal', colors: 'silver', details: 'our family is heartbroken; our pet is missing from a specific location.', missing: 'true', street:'herengracht 100', city: 'amsterdam', country: 'netherlands', zip_code: '1015 bs', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701181637/PetLovers/Shadow.jpg")
pet = Pet.new(name: 'shadow', category: 'I lost', species: 'cat', breed: 'ragdoll', colors: 'seal ', details: 'help us find our missing pet - a pet with fur of a certain color.', missing: 'true', street:'prinsengracht 12', city: 'amsterdam', country: 'netherlands', zip_code: '1015 dk', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701182269/PetLovers/Charlie.jpg")
pet = Pet.new(name: 'charlie', category: 'I lost', species: 'dog', breed: 'german shepherd', colors: 'black', details: 'have you seen a pet in a specific location area?', missing: 'true', street:'stationsplein 9', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ab', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

puts "Finished!"
