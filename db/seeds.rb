# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# users
# Guide et participant
alice = User.new(first_name: "Alice", last_name: "Fabre", city: "Paris", email: "alice@gmail.com", password: "123456", picture: "https://avatars0.githubusercontent.com/u/51875307?v=4")
alice.save
# Guide
charles = User.new(first_name: "Charles", last_name: "Dieulefet", city: "Londres", email: "charles@gmail.com", password: "123456", picture: "https://avatars2.githubusercontent.com/u/51363551?v=4")
charles.save
# participant
maxime = User.new(first_name: "Maxime", last_name: "Fulconis", city: "Rome", email: "maxime@gmail.com", password: "123456", picture: "https://avatars2.githubusercontent.com/u/49551009?v=4")
maxime.save
# participant
isabelle = User.new(first_name: "Isabelle", last_name: "Leclaire", city: "Paris", email: "isabell@gmail.com", password: "123456", picture: "https://avatars2.githubusercontent.com/u/49897862?v=4")
isabelle.save


# trips
montmartre = Trip.new(name: "Ballade à Montmartre", city: "Paris", user_id: "1", description: "Claire est rédactrice pour le site montmartre-site.com
Passionnée de la butte Montmartre, elle a l'idée de ce site dès 2004. Claire habite à Montmartre depuis 18 ans. Vous allez parcourir les rues pentues de la jolie butte Montmartre et vous découvrirez entre autres ...
visite guidée Montmartre
Un Mur des Je t'aime, une église très atypique, de l'art urbain (ou 'street art'), des passages avec des escaliers et des vieux lampadaires, des lieux de tournage de films, une vue imprenable sur Paris mais loin des touristes, une petite place que Picasso aimait beaucoup, des moulins rescapés, des vignes, une impasse pleine de belles maisons très différentes, une maison rose qu'un peintre célèbre a aimé et nous ferons une découverte paisible non loin du Sacré Cœur.

Découvrez encore beaucoup d'autres bonnes surprises, laissez-vous guider!")
montmartre.remote_photo_url = "https://parissecret.com/wp-content/uploads/2017/11/featmontnarte.png"
montmartre.save
vingt = Trip.new(name: "Ballade dans le 20ème", city: "Paris", user_id: "1", description: "Chacun son bout du monde à Paris, cet arrondissement difficilement accessible depuis chez soi. Evidemment, quand on habite un arrondissement limitrophe ou une ville de banlieue, ce « bout du monde » est d’autant plus difficile à atteindre. Moi, du loin de mon 15ème, mon bout du monde parisien est bel est bien le 20ème. Cet arrondissement qui me semblait pourtant avoir tout pour me séduire en ayant conservé son âme de village et rassemblant des villageois bien décidés à l’entretenir. Je vous emmène donc dans le 20ème pour une balade qui peut facilement durer 4h et qui m’a fait adorer ce bout de Paris au sud du cimetière du Père Lachaise.")
vingt.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB2Eb9myvtuVTWnVSWm-bNXdGJqjqbNfC7NiqLUBLsp-Ea8y9t"
vingt.save

canal = Trip.new(name: "Découverte du Canal", city: "Paris", user_id: "2", description: "En plein centre de Paris, à l’écart de l’effervescence de la ville, le canal Saint Martin est un havre de paix que vous pouvez découvrir tranquillement depuis nos bateaux ; depuis plus de 150 ans ce canal relie la Seine, juste derrière Notre Dame, aux canaux de l’Ourq et Saint Denis au Nord de Paris, traversant les vieux quartiers de l’est parisien en plein renouveau.

Le charme et le romantisme du Canal, avec ses marronniers centenaires, ses écluses, sa partie entièrement souterraine, ses ponts tournants, ses passerelles piétonnieres et ses berges animées en font un lieu de promenade très prisé des les premiers beaux jours.

Une croisière à travers un Paris méconnu des parisiens eux-mêmes est une vraie découverte ou l’insolite se mêle à la détente et au 'bon temps'...")
canal.remote_photo_url = "https://media.gettyimages.com/photos/locks-and-bridge-on-canal-st-martin-picture-id560511835?s=2048x2048"
canal.save


# bookings
booking1 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 2, trip_id: 1) # Charles fait le trip d'Alice
booking1.save
booking2 = Booking.new(start_date: "21/08/2019", end_date: "21/08/2019", user_id: 3, trip_id: 1) # Maxime fait le trip d'Alice
booking2.save
booking3 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 1, trip_id: 3) # Alice fait le trip de Charles
booking3.save
booking4 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 4, trip_id: 3) # Isabelle fait le trip de Charles
booking4.save
booking5 = Booking.new(start_date: "20/08/2019", end_date: "20/08/2019", user_id: 3, trip_id: 3) # Maxime fait le trip de Charles
booking5.save


