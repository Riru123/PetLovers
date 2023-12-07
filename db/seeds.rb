puts "cleaning database..."
Pet.destroy_all
User.destroy_all
Chatroom.destroy_all

require "open-uri"

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701863829/PetLovers/user_rita.png")
user_1 = User.new(email: "rita@gmail.com", password: "123456", username: "Rita", phone: "+31 6 1234 5678")
user_1.photo.attach(io: file, filename: "user_rita.png", content_type: "image/png")
user_1.save!

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701863749/PetLovers/user_nivea.jpg")
user_2 = User.new(email: "nivea@gmail.com", password: "123456", username: "Nivea", phone: "+31 6 2345 6789")
user_2.photo.attach(io: file, filename: "user_nivea.jpg", content_type: "image/jpg")
user_2.save!

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701863842/PetLovers/user_robert.jpg")
user_3 = User.new(email: "robert1@gmail.com", password: "123456", username: "RobertC", phone: "+31 6 3456 7890")
user_3.photo.attach(io: file, filename: "user_robert.jpg", content_type: "image/jpg")
user_3.save!

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701863808/PetLovers/user_riru.jpg")
user_4 = User.new(email: "riru@gmail.com", password: "123456", username: "Riru", phone: "+31 6 4567 8901")
user_4.photo.attach(io: file, filename: "user_riru.jpg", content_type: "image/jpg")
user_4.save!

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701872999/PetLovers/user_jennifer.jpg")
user_5 = User.new(email: "jennifer@gmail.com", password: "123456", username: "JennyA", phone: "+31 6 4567 8901")
user_5.photo.attach(io: file, filename: "user_jennifer.jpg", content_type: "image/jpg")
user_5.save!

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701863842/PetLovers/user_robert.jpg")
user_6 = User.new(email: "robert@gmail.com", password: "123456", username: "Robert", phone: "+31 6 3456 7890")
user_6.photo.attach(io: file, filename: "user_robert.jpg", content_type: "image/jpg")
user_6.save!

puts "Creating pets..."

require "open-uri"

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701867721/PetLoversSeed/Whiskers-cat.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'ragdoll', colors: 'white', details: 'A friendly Ragdoll cat with white fur has been found. If you recognize this cat, please contact us to reunite them.', missing: 'true', street:'keizersgracht 1', city: 'amsterdam', country: 'netherlands', zip_code: '1015 CC', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save!

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701872315/PetLoversSeed/Ruby-dog.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'labrador retriever', colors: 'black', details: 'A friendly Labrador Retriever with black fur has been found. If you recognize this dog, please contact us to reunite them.', missing: 'true', street:'Koninginneweg 169', city: 'amsterdam', country: 'netherlands', zip_code: '1075 CN', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701872269/PetLoversSeed/Teddy-dog.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'german shepherd', colors: 'black', details: 'A striking German Shepherd with solid black fur has been found. If you recognize this dog, please contact us to reunite them.', missing: 'true', street:'Toekanweg 2', city: 'haarlem', country: 'netherlands', zip_code: '2035 LC', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701872223/PetLoversSeed/Bailey-dog.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'dachshund', colors: 'chocolate', details: 'A playful Dachshund with chocolate and tan fur has been found. If you recognize this dog, please contact us to reunite them.', missing: 'true', street:'Ookmeerweg 275', city: 'amsterdam', country: 'netherlands', zip_code: '1067 SP', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868990/PetLoversSeed/Muffin-cat.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'persian', colors: 'white', details: 'A beautiful Persian cat with white fur has been found. If you recognize this cat, please contact us to reunite them.', missing: 'true', street:'oudezijds voorburgwal 197', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ex', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701869128/PetLoversSeed/Gizmo-cat.jpg")
pet = Pet.new(name: 'gizmo', category: 'I lost', species: 'cat', breed: 'persian', colors: 'chocolate', details: 'Help us find our furry friend, Gizmo, a Persian cat with chocolate colored fur. Any information about Gizmo s whereabouts is greatly appreciated.', missing: 'true', street:'oude kerkplein 23', city: 'amsterdam', country: 'netherlands', zip_code: '1012 gx', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701869069/PetLoversSeed/Nala-cat.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'persian', colors: 'cream', details: 'A lovely Persian cat with cream-colored fur has been found. If you recognize this cat, please contact us to reunite them.', missing: 'true', street:'nieuwezijds voorburgwal 56', city: 'amsterdam', country: 'netherlands', zip_code: '1012 sc', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701871676/PetLoversSeed/Daisy-dog.jpg")
pet = Pet.new(name: 'daisy', category: 'I lost', species: 'dog', breed: 'golden retriever', colors: 'dark gold', details: 'Missing since a specific date: Daisy, our Golden Retriever with dark gold fur, was last seen wearing a collar near Begijnhof 30, Amsterdam. Please help us locate her.', missing: 'true', street:'begijnhof 30', city: 'amsterdam', country: 'netherlands', zip_code: '1012 wv', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701870309/PetLoversSeed/Lucy-dog.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'german shepherd', colors: 'sable', details: 'A loyal German Shepherd with sable-colored fur has been found. If you recognize this dog, please contact us to reunite them.', missing: 'true', street:'kruisstraat 4', city: 'haarlem', country: 'netherlands', zip_code: '2011 px', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701870469/PetLoversSeed/Cooper-dog.jpg")
pet = Pet.new(name: 'cooper', category: 'I lost', species: 'dog', breed: 'golden retriever', colors: 'cream', details: 'Urgent: Cooper, our Golden Retriever with cream-colored fur, has disappeared. Any information about his whereabouts is appreciated. Please help us bring Cooper back home.', missing: 'true', street:'prins hendrikkade 73', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ad', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701871768/PetLoversSeed/Sadie-dog.jpg")
pet = Pet.new(category: 'I found', species: 'dog', breed: 'french bulldog', colors: 'brindle', details: 'A friendly French Bulldog with brindle fur has been found. If you recognize this dog, please contact us to reunite them.', missing: 'true', street:'lijnbaansgracht 234', city: 'wormerveer', country: 'netherlands', zip_code: '1017 ph', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701869239/PetLoversSeed/Charlie-cat.jpg")
pet = Pet.new(name: 'charlie', category: 'I lost', species: 'cat', breed: 'bengal', colors: 'blue', details: 'Our dear Bengal cat, Charlie, has gone missing. He has striking blue fur and was last seen near Westzijde 120, Zaandam. Please help us find him.', missing: 'true', street:'westzijde 120', city: 'zaandam', country: 'netherlands', zip_code: '1506 ek', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701871848/PetLoversSeed/Duke-dog.jpg")
pet = Pet.new(name: 'duke', category: 'I lost', species: 'dog', breed: 'beagle', colors: 'black, white, and brown', details: 'Missing: Duke, our Beagle, disappeared in a specific area on a certain date. He has black, white, and brown fur. Please help us find Duke.', missing: 'true', street:'oosterdokskade 3', city: 'amsterdam', country: 'netherlands', zip_code: '1011 ad', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701869288/PetLoversSeed/Max-dog.jpg")
pet = Pet.new(name: 'max', category: 'I lost', species: 'dog', breed: 'labrador retriever', colors: 'yellow', details: 'Max, our beloved Labrador Retriever with yellow fur, is missing. We are offering a reward for his safe return. If you see Max, please contact us immediately.', missing: 'true', street:'peperstraat 10', city: 'haarlem', country: 'netherlands', zip_code: '2011 cz', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701869190/PetLoversSeed/Cleo-cat.jpg")
pet = Pet.new(category: 'I found', species: 'cat', breed: 'maine coon', colors: 'silver', details: 'A majestic Maine Coon cat with silver fur has been found. If you recognize this cat, please contact us to reunite them.', missing: 'true', street:'kalverstraat 92', city: 'amsterdam', country: 'netherlands', zip_code: '1012 bz', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701870176/PetLoversSeed/Bella-dog.jpg")
pet = Pet.new(name: 'bella', category: 'I lost', species: 'dog', breed: 'labrador retriever', colors: 'chocolate', details: 'Lost pet alert: Bella, our chocolate-colored Labrador Retriever, is missing from Kerkplein 21, Haarlem, since a certain date. Any information is appreciated.', missing: 'true', street:'kerkplein 21', city: 'haarlem', country: 'netherlands', zip_code: '2011 rr', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701871724/PetLoversSeed/Rocky-dog.jpg")
pet = Pet.new(name: 'rocky', category: 'I lost', species: 'dog', breed: 'french bulldog', colors: 'fawn', details: 'Rocky, our French Bulldog with fawn-colored fur, has gone missing. Please contact us with any information to help us reunite with our furry family member.', missing: 'true', street:'zaanweg 67', city: 'amsterdam', country: 'netherlands', zip_code: '1521 dk', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701872062/PetLoversSeed/Zoe-dog.jpg")
pet = Pet.new(name: 'zoe', category: 'I lost', species: 'dog', breed: 'beagle', colors: 'lemon and white', details: 'Zoe, our Beagle with lemon and white markings, is missing. She has distinctive features. Please help us find Zoe; any information is valuable.', missing: 'true', street:'brouwersgracht 160', city: 'amsterdam', country: 'netherlands', zip_code: '1013 ga', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701872136/PetLoversSeed/Buddy-dog.jpg")
pet = Pet.new(name: 'buddy', category: 'I lost', species: 'dog', breed: 'dachshund', colors: 'red', details: 'Lost pet alert: Buddy, our Red Dachshund, went missing from Dijk 34, Amsterdam. If you see Buddy, please contact us.', missing: 'true', street:'dijk 34', city: 'amsterdam', country: 'netherlands', zip_code: '1131 cn', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868870/PetLoversSeed/Misty-cat.jpg")
pet = Pet.new(name: 'misty', category: 'I lost', species: 'cat', breed: 'siamese', colors: 'seal point ', details: 'Lost pet alert: Our Siamese cat, Misty, with Seal Point fur, is missing in a specific location. If you have any information, please contact us. We miss Misty dearly.', missing: 'true', street:'hoogstraat 5', city: 'zaandam', country: 'netherlands', zip_code: '1506 pc', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701872192/PetLoversSeed/Molly-dog.jpg")
pet = Pet.new(name: 'molly', category: 'I lost', species: 'dog', breed: 'dachshund', colors: 'black and tan', details: 'Our beloved Dachshund, Molly, is missing. Please keep an eye out for her. She has black and tan fur and was last seen near Dekamaarkt in Ijburg.', missing: 'true', street:'Pampuslaan 45', city: 'Amsterdam', country: 'netherlands', zip_code: '1087 HP', user: user_1)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868909/PetLoversSeed/Max-cat.jpg")
pet = Pet.new(name: 'max', category: 'I lost', species: 'cat', breed: 'siamese', colors: 'lilac point', details: 'Desperately seeking our Siamese cat, Max, last seen in Dam 1, Zaandam. Max has lilac point fur. If you see him, please help us bring Max back home.', missing: 'true', street:'dam 1', city: 'zaandam', country: 'netherlands', zip_code: '1506 bc', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868707/PetLoversSeed/Chloe-cat.jpg")
pet = Pet.new(name: 'chloe', category: 'I lost', species: 'cat', breed: 'maine coon', colors: 'brown tabby', details: 'Please be on the lookout for our Maine Coon cat, Chloe, with beautiful brown tabby fur. If you see her around Langestraat 23, Alkmaar, contact us immediately.', missing: 'true', street:'langestraat 23', city: 'alkmaar', country: 'netherlands', zip_code: '1811 jd', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868833/PetLoversSeed/Tiger-cat.jpg")
pet = Pet.new(name: 'tiger', category: 'I lost', species: 'cat', breed: 'maine coon', colors: 'cream', details: 'Tiger, our Maine Coon cat with cream-colored fur, went missing on a specific date from Grote Markt 1, Alkmaar. Please help us bring him back home.', missing: 'true', street:'grote markt 1', city: 'alkmaar', country: 'netherlands', zip_code: '1811 ke', user: user_2)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868421/PetLoversSeed/Simba-cat.jpg")
pet = Pet.new(name: 'simba', category: 'I lost', species: 'cat', breed: 'sphynx', colors: 'peach', details: 'Our family is heartbroken; Simba, our Sphynx cat with peach-colored fur, is missing. If you find him, please help reunite Simba with his family.', missing: 'true', street:'binnenweg 7', city: 'alkmaar', country: 'netherlands', zip_code: '1811 jb', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868362/PetLoversSeed/Bella-cat.jpg")
pet = Pet.new(name: 'bella', category: 'I lost', species: 'cat', breed: 'sphynx', colors: 'black', details: 'Bella, our Sphynx cat with distinctive black markings, is missing. We are worried sick. Please be on the lookout for her, and if you see Bella, contact us immediately.', missing: 'true', street:'koningstraat 5', city: 'haarlem', country: 'netherlands', zip_code: '2011 tb', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868102/PetLoversSeed/Oliver-cat.jpg")
pet = Pet.new(name: 'oliver', category: 'I lost', species: 'cat', breed: 'bengal', colors: 'brown', details: 'Urgent: Our Bengal cat, Oliver, has disappeared in a particular location. He has stunning brown fur, and we are desperately seeking any information about his whereabouts.', missing: 'true', street:'damstraat 1', city: 'haarlem', country: 'netherlands', zip_code: '2011 ha', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701868030/PetLoversSeed/Luna-cat.jpg")
pet = Pet.new(name: 'luna', category: 'I lost', species: 'cat', breed: 'bengal', colors: 'silver', details: 'Our family is heartbroken; our Bengal cat, Luna, is missing from our home. She has striking silver fur. If you spot her anywhere, please let us know. We miss Luna terribly.', missing: 'true', street:'herengracht 100', city: 'amsterdam', country: 'netherlands', zip_code: '1015 bs', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701867826/PetLoversSeed/Shadow-cat.jpg")
pet = Pet.new(name: 'shadow', category: 'I lost', species: 'cat', breed: 'ragdoll', colors: 'seal ', details: 'Shadow, our charming Ragdoll cat with beautiful Seal fur, has wandered off. Help us find our missing pet and bring Shadow back home. Any information is greatly appreciated.', missing: 'true', street:'prinsengracht 12', city: 'amsterdam', country: 'netherlands', zip_code: '1015 dk', user: user_4)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

file = URI.open("https://res.cloudinary.com/ds9b30kg0/image/upload/v1701870238/PetLoversSeed/Charlie-dog.png")
pet = Pet.new(name: 'charlie', category: 'I lost', species: 'dog', breed: 'german shepherd', colors: 'black', details: 'Have you seen our German Shepherd, Charlie, in the specific location area near Stationsplein 9, Amsterdam? He has sleek black fur. Please contact us if you have any information.', missing: 'true', street:'stationsplein 9', city: 'amsterdam', country: 'netherlands', zip_code: '1012 ab', user: user_3)
pet.photo.attach(io: file, filename: "pet.png", content_type: "image/png")
pet.save

puts "Finished!"
