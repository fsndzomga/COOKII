require 'faker'

puts 'Cleaning database...'
Booking.destroy_all
Meal.destroy_all
User.destroy_all

# puts 'Creating user and meals...'
# 5.times do
#   user = User.new(
#     email: Faker::Internet.free_email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     password: "topsecret",
#     password_confirmation: "topsecret"
#   )
#   user.save!
#   meal = Meal.new(
#     name: Faker::Food.dish,
#     description: Faker::Food.description,
#     vegetarian: [true, false].sample,
#     category: Faker::Food.ethnic_category,
#     price_per_person: rand(5..15),
#     max_person: rand(1..8),
#     user: user
#   )
#   meal.save!
#   puts "1 meal created"
# end
# puts 'Finished!'

user1 = User.new(
  email: "jean.dupont@gmail.com",
  first_name: "Jean",
  last_name: 'Dupont',
  address: '133 Avenue Daumesnil 75012 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user1.save!
meal = Meal.new(
  name: 'Blanquette de Veau',
  description: "La blanquette, ou blanquette de veau ou blanquette de veau à l'ancienne, est une recette de cuisine traditionnelle de cuisine française, à base de viande de veau cuite dans un bouillon avec carotte, poireau, oignon et bouquet garni, liée en sauce blanche à la crème et au beurre et aux champignons de Paris.",
  vegetarian: false,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user1
)
meal.save!
puts "1 meal created"

user2 = User.new(
  email: "michel.martin@gmail.com",
  first_name: 'Michel',
  last_name: 'Martin',
  address: '19-21 Rue Truffaut 75017 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user2.save!
meal = Meal.new(
  name: 'Pot au Feu',
  description: "Le pot-au-feu est une recette de cuisine traditionnelle emblématique historique de la cuisine française, et du repas gastronomique des Français, à base de viande de bœuf cuisant longuement à feu très doux dans un bouillon de légumes.",
  vegetarian: false,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user2
)
meal.save!
puts "1 meal created"

user3 = User.new(
  email: 'tran.nguyen@gmail.com',
  first_name: 'Tran',
  last_name: 'Nguyen',
  address: '3 Rue du General Blaise 75011 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user3.save!
meal = Meal.new(
  name: 'Bo Bun',
  description: 'Le bò bún est un type de plat de vermicelles de riz servi à température ambiante et viande chaude, garni de salade et arrosée de sauce de poisson sucrée-vinaigrée.',
  vegetarian: false,
  category: 'Asian',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user3
)
meal.save!
puts "1 meal created"

user4 = User.new(
  email: 'faiza.benaissa@gmail.com',
  first_name: 'Faiza',
  last_name: 'Benaissa',
  address: '35 Rue du Roi de Sicile 75004 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user4.save!
meal = Meal.new(
  name: 'Chicken Tajine',
  description: 'Chicken tagine is a traditional Moroccan dish of chicken pieces braised with spices, garlic, onion, olives, and preserved lemons. It’s company-worthy yet easy to throw together.',
  vegetarian: false,
  category: 'Mediterranean',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user4
)
meal.save!
puts "1 meal created"

user5 = User.new(
  email: 'john.mitchell@gmail.com',
  first_name: 'John',
  last_name: 'Mitchell',
  address: '26 Cour Saint-Emilion 75012 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user5.save!
meal = Meal.new(
  name: 'Vegetables Curry',
  description: 'This simple vegetable curry is great for feeding a crowd, served with naan and rice. You can freeze batches for future midweek meals.',
  vegetarian: true,
  category: 'Asian',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user5
)
meal.save!
puts "1 meal created"

user6 = User.new(
  email: 'sigourney.weaver@gmail.com',
  first_name: 'Sigourney',
  last_name: 'Weaver',
  address: "30 Avenue d'Italie 75013 PARIS",
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user6.save!
meal = Meal.new(
  name: 'Lentil Soup',
  description: 'This healthy lentil soup recipe comes together quickly with pantry ingredients. Simple spices, fresh greens and a squeeze of lemon make it the best! ',
  vegetarian: true,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user6
)
meal.save!
puts "1 meal created"

user7 = User.new(
  email: 'jonathan.sexton@gmail.com',
  first_name: 'Jonathan',
  last_name: 'Sexton',
  address: "3 Rue de l'Abbe Gregoire 75006 PARIS",
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user7.save!
meal = Meal.new(
  name: 'Potato Salad',
  description: "La salade de pommes de terre est un plat à base de pommes de terre, généralement servi en accompagnement du plat principal. C'est l'un des plats les plus populaires dans la cuisine allemande, autrichienne et slave.",
  vegetarian: true,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user7
)
meal.save!
puts "1 meal created"

user8 = User.new(
  email: 'kilian.jornet@gmail.com',
  first_name: 'Kilian',
  last_name: 'Jornet',
  address: '36 Rue George Sand 75016 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user8.save!
meal = Meal.new(
  name: 'Paella',
  description: 'La paella est une spécialité culinaire traditionnelle espagnole à base de riz rond, originaire de la région de Valence, qui tient son nom de la poêle qui sert à la cuisiner.',
  vegetarian: false,
  category: 'Mediterranean',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user8
)
meal.save!
puts "1 meal created"

user9 = User.new(
  email: 'stan.smith@gmail.com',
  first_name: 'Stan',
  last_name: 'Smith',
  address: '37 Boulevard de la Villette 75010 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user9.save!
meal = Meal.new(
  name: 'Beef Stew',
  description: 'Chunks of well-marbled beef are seared in a hot pan, then gently braised with garlic and onions in a rich wine-based broth.',
  vegetarian: false,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user9
)
meal.save!
puts "1 meal created"

user10 = User.new(
  email: 'bilel.hakimi@gmail.com',
  first_name: 'Bilel',
  last_name: 'Hakimi',
  address: '20 Rue de la Fontaine du But 75018 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user10.save!
meal = Meal.new(
  name: 'Veggie Couscous',
  description: "Le couscous est d'une part une semoule de blé dur préparée à l'huile d'olive et d'autre part, une spécialité culinaire issue de la cuisine berbère, à base de couscous, de légumes, d'épices, d'huile d'olive",
  vegetarian: true,
  category: 'Mediterranean',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user10
)
meal.save!
puts "1 meal created"

user11 = User.new(
  email: 'pietro.colina@gmail.com',
  first_name: 'Pietro',
  last_name: 'Colina',
  address: '5 Rue Biot 75017 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user11.save!
meal = Meal.new(
  name: 'Aspargus Risotto',
  description: 'Classic asparagus risotto made with Arborio rice, shallots, stock, fresh asparagus, and Parmesan cheese.',
  vegetarian: true,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user11
)
meal.save!
puts "1 meal created"

user12 = User.new(
  email: 'moussa.diallo@gmail.com',
  first_name: 'Moussa',
  last_name: 'Diallo',
  address: '68 Boulevard du Montparnasse 75014 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user12.save!
meal = Meal.new(
  name: 'Chichen Mafé',
  description: 'Le mafé est un plat typique du Sénégal qui allie une viande généralement blanche à une préparation épicée avec des cacahuètes.',
  vegetarian: false,
  category: 'African',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user12
)
meal.save!
puts "1 meal created"

user13 = User.new(
  email: 'manuel.pereira@gmail.com',
  first_name: 'Manuel',
  last_name: 'Pereira',
  address: '34 Boulevard Haussmann 75009 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user13.save!
meal = Meal.new(
  name: 'Bacalao',
  description: "Le bacalao est un ragoût d'origine espagnole préparé avec de la morue salée, des tomates, des pommes de terre et de l'ail.",
  vegetarian: false,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user13
)
meal.save!
puts "1 meal created"

user14 = User.new(
  email: 'germaine.robert@gmail.com',
  first_name: 'Germaine',
  last_name: 'Robert',
  address: '39 Avenue Duquesne 75007 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user14.save!
meal = Meal.new(
  name: 'Chickpea Curry',
  description: "The chickpea curry or Chana Dahl, is a delightful dish, full of tastes and spices, just like I love them! And rather light by the way!! What's not to like?",
  vegetarian: true,
  category: 'Asian',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user14
)
meal.save!
puts "1 meal created"

user15 = User.new(
  email: 'javier.castillo@gmail.com',
  first_name: 'Javier',
  last_name: 'Castillo',
  address: '271 Rue des Pyrenees 75020 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: false
)
user15.save!
meal = Meal.new(
  name: 'Chili Sin Carne',
  description: "Je suis un grande fan de cuisine mexicaine, avec en tête de liste de mes recettes préférés les tacos et le chili con carne. Dernièrement j’ai eu une envie de chili mais pour changer un peu, j’ai décidé d’en faire une version sans viande.",
  vegetarian: true,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user15
)
meal.save!
puts "1 meal created"

user16 = User.new(
  email: 'yann.delaqueze@gmail.com',
  first_name: 'Yann',
  last_name: 'Delaqueze',
  address: '8 Rue Casimir Delavigne 75006 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: true
)
user16.save!
meal = Meal.new(
  name: 'Greek Salad',
  description: "La salade grecque ou salade crétoise est une recette de cuisine traditionnelle et emblématique de salade composée de la cuisine grecque, à base de tomate, concombre, huile d'olive, origan, feta, olives, oignon, poivron vert, et câpres.",
  vegetarian: true,
  category: 'Mediterranean',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user16
)
meal.save!
puts "1 meal created"

user17 = User.new(
  email: 'alizee.v@live.fr',
  first_name: 'Alizée',
  last_name: 'Vallat',
  address: '84 Rue Raymond Losserand 75014 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: true
)
user17.save!
meal = Meal.new(
  name: 'Falafel Sandwich',
  description: "Un pain pita garni de hummus, légumes marinés et grillés et de boulettes de falafels puis d'une sauce au sésame au dessus, tout simplement",
  vegetarian: true,
  category: 'Mediterranean',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user17
)
meal.save!
puts "1 meal created"

user18 = User.new(
  email: 'ndzomgafs@gmail.com',
  first_name: 'Franck',
  last_name: 'Ndzomga',
  address: '55 Rue Montmartre 75002 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: true
)
user18.save!
meal = Meal.new(
  name: 'Spaghetti Bolognese',
  description: "La sauce bolognaise est une recette de sauce traditionnelle de la cuisine italienne, originaire de Bologne en Émilie-Romagne, à base de bœuf haché, sauce tomate, oignon, céleri, carottes, et d'huile d'olive.",
  vegetarian: false,
  category: 'European',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user18
)
meal.save!
puts "1 meal created"

user19 = User.new(
  email: 'lasartemilagros@gmail.com',
  first_name: 'Millie',
  last_name: 'Lasarte',
  address: '3 Rue Flatters 75005 PARIS',
  password: "topsecret",
  password_confirmation: "topsecret",
  admin: true
)
user19.save!
meal = Meal.new(
  name: 'Yassa',
  description: "Le yassa est un plat d’origine sénégalaise à base d'oignons frits et de riz et qui peut être accompagné de viande marinée dans le citron puis frite ou braisée, de poulet ou de poisson.",
  vegetarian: false,
  category: 'African',
  price_per_person: rand(5..15),
  max_person: rand(1..8),
  user: user19
)
meal.save!
puts "1 meal created"
