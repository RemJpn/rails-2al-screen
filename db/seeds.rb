puts "Start"
puts "Clean DB"

Booking.destroy_all
User.destroy_all
Show.destroy_all
Artist.destroy_all
Category.destroy_all

#----------------------------------------------------
puts "Seeding categories..."
theater = Category.create!(name: "Theatre")
concert = Category.create!(name: "Concert")
comedy = Category.create!(name: "Humour")


#----------------------------------------------------
puts "Seeding users..."

armand = User.create!(
  first_name: "Armand",
  last_name: "Duval",
  email: "armand.duval@test.com",
  password: "123456"
)

#----------------------------------------------------
puts "Seeding artists..."

paul_taylor = Artist.create!(name: "Paul AYLOR")
issa_doumbia = Artist.create!(name: "Issa DOUMBIA")
laura_laune = Artist.create!(name: "Laura LAUNE")
elodie_poux = Artist.create!(name: "Elodie POUX")
ben_artist = Artist.create!(name: "BEN")
jean_racine = Artist.create!(name: "Jean RACINE")



#--------------------------------------------------------
puts "Seeding show"

so_british = Show.new(
  name: "SO BRITISH ou presque",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "15/11/2020",
  time: "20:00",
  price: 8,
  style: "Humour - StandUp"
)
so_british.category = comedy
so_british.artist = paul_taylor
so_british.thumbnail.attach(io: File.open('app/assets/images/so_british.png'), filename: 'so_british_photo.png', content_type: 'image/png')
so_british.wide_poster.attach(io: File.open('app/assets/images/so_british_wide.png'), filename: 'so_british_wide_photo.png', content_type: 'image/png')
so_british.save!


prem_consultation = Show.new(
  name: "1ere CONSULTATION",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "15/11/2020",
  time: "20:00",
  price: 8,
  style: "Humour - StandUp"
)
prem_consultation.category = comedy
prem_consultation.artist = issa_doumbia
prem_consultation.thumbnail.attach(io: File.open('app/assets/images/prem_consultation.png'), filename: 'prem_consultation_photo.png', content_type: 'image/png')
# prem_consultation.wide_poster.attach(io: File.open('app/assets/images/prem_consultation_wide.png'), filename: 'prem_consultation_wide_photo.png', content_type: 'image/png')
prem_consultation.save!


diable_gentille_fille = Show.new(
  name: "Le DIABLE est une gentille fille",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "15/11/2020",
  time: "20:00",
  price: 8,
  style: "Humour - StandUp"
)
diable_gentille_fille.category = comedy
diable_gentille_fille.artist = laura_laune
diable_gentille_fille.thumbnail.attach(io: File.open('app/assets/images/diable_gentille_fille.png'), filename: 'diable_gentille_fille_photo.png', content_type: 'image/png')
# diable_gentille_fille.wide_poster.attach(io: File.open('app/assets/images/diable_gentille_fille_wide.png'), filename: 'diable_gentille_fille_wide_photo.png', content_type: 'image/png')
diable_gentille_fille.save!


ben = Show.new(
  name: "BEN",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "15/11/2020",
  time: "20:00",
  price: 8,
  style: "Humour - StandUp"
)
ben.category = comedy
ben.artist = ben_artist
ben.thumbnail.attach(io: File.open('app/assets/images/ben.png'), filename: 'ben_photo.png', content_type: 'image/png')
# ben.wide_poster.attach(io: File.open('app/assets/images/ben_wide.png'), filename: 'ben_wide_photo.png', content_type: 'image/png')
ben.save!


syndrome_playmobil = Show.new(
  name: "Le Syndrome du Playmobil",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "15/11/2020",
  time: "20:00",
  price: 8,
  style: "Humour - StandUp"
)
syndrome_playmobil.category = comedy
syndrome_playmobil.artist = elodie_poux
syndrome_playmobil.thumbnail.attach(io: File.open('app/assets/images/syndrome_playmobil.png'), filename: 'syndrome_playmobil_photo.png', content_type: 'image/png')
# syndrome_playmobil.wide_poster.attach(io: File.open('app/assets/images/syndrome_playmobil_wide.png'), filename: 'syndrome_playmobil_wide_photo.png', content_type: 'image/png')
syndrome_playmobil.save!


andromaque = Show.new(
  name: "Andromaque",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Classique - Tragédie \n Tout Public"
)
andromaque.category = theater
andromaque.artist = jean_racine
andromaque.thumbnail.attach(io: File.open('app/assets/images/andromaque.png'), filename: 'andromaque_photo.png', content_type: 'image/png')
andromaque.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
andromaque.save!




puts "Finished"
