# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Générer les records'

# users
# Guide et participant
alice = User.new(first_name: "Alice", last_name: "Fabre", city: "Paris", email: "alice@gmail.com", password: "123456", photo: "https://avatars0.githubusercontent.com/u/51875307?v=4")
alice.save
# Guide
charles = User.new(first_name: "Charles", last_name: "Dieulefet", city: "Londres", email: "charles@gmail.com", password: "123456", photo: "https://avatars2.githubusercontent.com/u/51363551?v=4")
charles.save
# participant
maxime = User.new(first_name: "Maxime", last_name: "Fulconis", city: "Rome", email: "maxime@gmail.com", password: "123456", photo: "https://avatars2.githubusercontent.com/u/49551009?v=4")
maxime.save
# participant
isabelle = User.new(first_name: "Isabelle", last_name: "Leclaire", city: "Paris", email: "isabelle@gmail.com", password: "123456", photo: "https://avatars2.githubusercontent.com/u/49897862?v=4")
isabelle.save


# trips
montmartre = Trip.new(name: "Balade à Montmartre", city: "Paris", address: "16 villa Gaudelet, Paris", user_id: "1", description: "Claire est rédactrice pour le site montmartre-site.com
Passionnée de la butte Montmartre, elle a l'idée de ce site dès 2004. Claire habite à Montmartre depuis 18 ans. Vous allez parcourir les rues pentues de la jolie butte Montmartre et vous découvrirez entre autres ...
visite guidée Montmartre
Un Mur des Je t'aime, une église très atypique, de l'art urbain (ou 'street art'), des passages avec des escaliers et des vieux lampadaires, des lieux de tournage de films, une vue imprenable sur Paris mais loin des touristes, une petite place que Picasso aimait beaucoup, des moulins rescapés, des vignes, une impasse pleine de belles maisons très différentes, une maison rose qu'un peintre célèbre a aimé et nous ferons une découverte paisible non loin du Sacré Cœur.

Découvrez encore beaucoup d'autres bonnes surprises, laissez-vous guider!")
montmartre.remote_photo_url = "https://parissecret.com/wp-content/uploads/2017/11/featmontnarte.png"
montmartre.save
vingt = Trip.new(name: "Balade dans le 20ème", city: "Paris", address: "avenue Jean Jaures, Paris", user_id: "1", description: "Chacun son bout du monde à Paris, cet arrondissement difficilement accessible depuis chez soi. Evidemment, quand on habite un arrondissement limitrophe ou une ville de banlieue, ce « bout du monde » est d’autant plus difficile à atteindre. Moi, du loin de mon 15ème, mon bout du monde parisien est bel est bien le 20ème. Cet arrondissement qui me semblait pourtant avoir tout pour me séduire en ayant conservé son âme de village et rassemblant des villageois bien décidés à l’entretenir. Je vous emmène donc dans le 20ème pour une balade qui peut facilement durer 4h et qui m’a fait adorer ce bout de Paris au sud du cimetière du Père Lachaise.")
vingt.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB2Eb9myvtuVTWnVSWm-bNXdGJqjqbNfC7NiqLUBLsp-Ea8y9t"
vingt.save

canal = Trip.new(name: "Découverte du Canal", city: "Paris", address: "rue saint-denis, Paris", user_id: "2", description: "En plein centre de Paris, à l’écart de l’effervescence de la ville, le canal Saint Martin est un havre de paix que vous pouvez découvrir tranquillement depuis nos bateaux ; depuis plus de 150 ans ce canal relie la Seine, juste derrière Notre Dame, aux canaux de l’Ourq et Saint Denis au Nord de Paris, traversant les vieux quartiers de l’est parisien en plein renouveau.

Le charme et le romantisme du Canal, avec ses marronniers centenaires, ses écluses, sa partie entièrement souterraine, ses ponts tournants, ses passerelles piétonnieres et ses berges animées en font un lieu de promenade très prisé des les premiers beaux jours.

Une croisière à travers un Paris méconnu des parisiens eux-mêmes est une vraie découverte ou l’insolite se mêle à la détente et au 'bon temps'...")
canal.remote_photo_url = "https://media.gettyimages.com/photos/locks-and-bridge-on-canal-st-martin-picture-id560511835?s=2048x2048"
canal.save

legendes = Trip.new(name: "Legendes de Paris", city: "Paris", address: "Louvre Rue de Rivoli, 75001 Paris", user_id: "2", description: "Venez découvrir avec nous les mystères et légendes du berceau de Paris ! Du Louvre à Notre-Dame, vous connaîtrez tous les secrets du fantôme des Tuileries, des ferronneries de la cathédrale la plus visitée d’Europe ou encore du barbier sanguinaire de la rue Chanoinesse…
")
legendes.remote_photo_url = "https://www.pariszigzag.fr/wp-content/uploads/2016/10/Legendes.jpg"
legendes.save

passages = Trip.new(name: "Les plus beaux passages", city: "Paris", address: "10-12 Boulevard Montmartre, 75009 Paris", user_id: "2", description: "Faites un saut dans le Paris du XIXe siècle ! A la découverte des élégantes boutiques et passages couverts qui jalonnent le parcours, flânez comme les parisien(ne)s de la Belle Epoque.
")
passages.remote_photo_url = "https://www.pariszigzag.fr/wp-content/uploads/2014/11/ImagesEclectic-8.jpg"
passages.save


passages = Trip.new(name: "Paris des Francs-Maçons", city: "Paris", address: "Louvre Rue de Rivoli, 75001 Paris", user_id: "2", description: "Suivez-nous pour découvrir comment trois siècles de présence maçonnique à Paris ont marqué l’un des monuments les plus emblématiques de la capitale : le Louvre.

Histoire, symboles, célébrités… la franc-maçonnerie n’aura plus de secret pour vous après cette visite ! Fans de théories fantaisistes passez votre chemin car cette visite vous dévoilera la vraie histoire des vrais francs-maçons !
")
passages.remote_photo_url = "https://www.pariszigzag.fr/wp-content/uploads/2015/06/FrancsMacons.jpg"
passages.save

annees_folles = Trip.new(name: "Paris des Années Folles", city: "Paris", address: "Boulevard du Montparnasse Paris", user_id: "2", description: "Prenez le train direction les Années folles ! Dans les ruelles qui eurent Breton, Man Ray, Kiki de Montparnasse ou encore Picasso pour habitués, nous vous proposons de saisir la folie de l’entre-deux-guerres.")
annees_folles.remote_photo_url = "https://www.pariszigzag.fr/wp-content/uploads/2016/09/Le-Paris-des-anne%E2%95%A0ues-folles-3.jpg"
annees_folles.save


pere_lachaise = Trip.new(name: "Père Lachaise insolite", city: "Paris", address: "8 Boulevard de Ménilmontant, 75020 Paris", user_id: "2", description: "Partez à la découverte des personnages qui font l’Histoire de ce gigantesque musée à ciel ouvert depuis plus de 200 ans ! Suivez-nous pour une balade hors du temps dans l’étrange labyrinthe que forment les 44 hectares de ce jardin-cimetière, où les tombes se bousculent et où la verdure foisonne, reprenant quelquefois ses droits sur les pierres.
")
pere_lachaise.remote_photo_url = "https://www.pariszigzag.fr/wp-content/uploads/2014/10/Lachaise.jpg"
pere_lachaise.save


tuileries = Trip.new(name: "Les trésors insolites des Tuileries", city: "Paris", address: "Place de la Concorde, 75001 Paris", user_id: "2", description: "Des arbres, des allées, des bassins, des parisiens qui courent et des touristes qui pique-niquent… Commun, le jardin des Tuileries ? Eh bien non, au contraire !")
tuileries.remote_photo_url = "https://www.pariszigzag.fr/wp-content/uploads/2016/06/jardin-des-Tuileries.jpg"
tuileries.save


ourcq = Trip.new(name: "Le canal de l'Ourcq", city: "Paris", address: "68 Quai de la Loire, 75019 Paris", user_id: "2", description: "C’est vraiment une balade super agréable, zen et tout en silence ! Tu peux aller te balader assez loin à l’extérieur de paris via le canal. Pas besoin de permis puisque c’est un bateau électrique ou de gondolier comme quand tu vas visiter Venise.")
ourcq.remote_photo_url = "https://www.marindeaudouce.fr/wp-content/uploads/bateau-naviguant-pres-des-moulins-de-pantin.jpg"
ourcq.save


velo = Trip.new(name: "A vélo dans Paris", city: "Paris", address: "37 Quai Branly, 75007 Paris", user_id: "2", description: "Il te suffit de louer un Vélib à Paris pour ensuite pouvoir te balader tranquillement dans toute la capitale. Ensuite tu peux reposer ton vélo dans une des 1800 stations disponibles à Paris. L’avantage c’est que tu n’as pas avoir peur de te le faire voler ou d’être encombré avec, puisque tu le reposes en borne après chaque trajet.")
velo.remote_photo_url = "https://parisbiketour.net/wp-content/uploads/2016/12/paris-electrique-3.jpg"
velo.save


campagne = Trip.new(name: "La campagne à Paris", city: "Paris", address: "210 Rue des Pyrénées, 75020 Paris", user_id: "2", description: "C’est un ensemble de petites ruelles avec des maisons typiques qui te donneront l’impression d’être dans un petit village ou dans un Paris des années 30. Le quartier se situe juste à côté de porte de Bagnolet dans les rues :

rue Prosper Enfantin
rue Irénée lanc
rue Mondonville
rue Jules Siegfried")
campagne.remote_photo_url = "https://parissecret.com/wp-content/uploads/2018/11/t%C3%A9l%C3%A9chargement-56-1.jpg"
campagne.save

coulee = Trip.new(name: "La coulée verte", city: "Paris", address: "1 Coulée verte René-Dumont, 75012 Paris", user_id: "2", description: "C’est une balade alternative de 4 km de long qui part de Bastille jusqu’à porte Dorée. C’est une alternance d’espaces verts, de petits jardins et plantations urbaines en tout genre.

C’est une vraie bouffée d’air frais, au calme et souvent en hauteur cachée dans un quartier qui ne le laisserait pas forcément présager . ")
coulee.remote_photo_url = "https://ville-chatillon.fr/files/pages/modules/image/coulee-verte-4-49.jpg"
coulee.save

quais = Trip.new(name: "Balade sur les quais de Seine", city: "Paris", address: "Place du Châtelet Paris", user_id: "2", description: "Pour un Parisien, la Seine n’est pas un simple cours d’eau. Aujourd’hui lieu privilégié de détente ou de promenades romantiques, ce fleuve reste, inconsciemment surement, celui qui a nourri en poissons les premiers parisiens, abreuvé son bétail et donné son eau pour y faire prospérer l’agriculture.

Plus encore, la Seine fut à l’origine de la ville un rempart naturel contre les attaques extérieures lorsque Paris est devenu Paris, c’est-à-dire lorsque ses habitants se replièrent dans l’île de la Cité pour fuir les invasions, et abandonnèrent petit à petit d’eux-mêmes le nom Romain de Lutèce pour celui de Civitas Parisiorum : la ville des Parisii.")
quais.remote_photo_url = "https://www.unjourdeplusaparis.com/wp-content/uploads/2012/08/balade-bord-de-seine.jpg"
quais.save







# londres = Trip.new(name: "Londres", city: "Londres", address: "Londres", user_id: "1", description: "Londres, la capitale de l'Angleterre et du Royaume-Uni, est une ville moderne dont l'histoire remonte à l'époque romaine. En son centre se dressent l'imposant Parlement, l'emblématique Big Ben et l'abbaye de Westminster, lieu de couronnement des monarques britanniques. De l'autre côté de la Tamise, le London Eye, la grande roue, offre une vue panoramique sur le South Bank Center, et toute la ville.")
# londres.remote_photo_url = "https://img-4.linternaute.com/EJwrJtqS8UseZNofJUkmhg4FHd4=/660x366/smart/ba429abadd8a4731be516a2465ca749f/ccmcms-linternaute/10993851.jpg"
# londres.save

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

puts "Base générée"


