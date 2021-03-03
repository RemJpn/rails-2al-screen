puts "Start"
puts "Clean DB"

Booking.destroy_all
User.destroy_all
Show.destroy_all
Artist.destroy_all
Category.destroy_all

#----------------------------------------------------
puts "Seeding categories..."
theater = Category.create!(name: "Theâtre")
concert = Category.create!(name: "Concerts")
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

myband = Artist.create!(name: "My Band")



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
prem_consultation.wide_poster.attach(io: File.open('app/assets/images/so_british_wide.png'), filename: 'so_british_wide_photo.png', content_type: 'image/png')
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
diable_gentille_fille.wide_poster.attach(io: File.open('app/assets/images/so_british_wide.png'), filename: 'so_british_wide_photo.png', content_type: 'image/png')
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
ben.wide_poster.attach(io: File.open('app/assets/images/so_british_wide.png'), filename: 'so_british_wide_photo.png', content_type: 'image/png')
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
syndrome_playmobil.wide_poster.attach(io: File.open('app/assets/images/so_british_wide.png'), filename: 'so_british_wide_photo.png', content_type: 'image/png')
syndrome_playmobil.save!


# Theatre

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


theatre2 = Show.new(
  name: "Theatre 2",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Classique - Tragédie \n Tout Public"
)
theatre2.category = theater
theatre2.artist = jean_racine
theatre2.thumbnail.attach(io: File.open('app/assets/images/theatre_2.png'), filename: 'theatre_2.png', content_type: 'image/png')
theatre2.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
theatre2.save!


theatre3 = Show.new(
  name: "Theatre 3",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Classique - Tragédie \n Tout Public"
)
theatre3.category = theater
theatre3.artist = jean_racine
theatre3.thumbnail.attach(io: File.open('app/assets/images/theatre_3.png'), filename: 'theatre_3.png', content_type: 'image/png')
theatre3.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
theatre3.save!


theatre4 = Show.new(
  name: "Theatre 4",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Classique - Tragédie \n Tout Public"
)
theatre4.category = theater
theatre4.artist = jean_racine
theatre4.thumbnail.attach(io: File.open('app/assets/images/theatre_4.png'), filename: 'theatre_4.png', content_type: 'image/png')
theatre4.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
theatre4.save!


theatre5 = Show.new(
  name: "Theatre 5",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Classique - Tragédie \n Tout Public"
)
theatre5.category = theater
theatre5.artist = jean_racine
theatre5.thumbnail.attach(io: File.open('app/assets/images/theatre_5.png'), filename: 'theatre_5.png', content_type: 'image/png')
theatre5.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
theatre5.save!


# Concerts

concert1 = Show.new(
  name: "concert1",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Post grunge"
)
concert1.category = concert
concert1.artist = myband
concert1.thumbnail.attach(io: File.open('app/assets/images/concert1.png'), filename: 'concert1.png', content_type: 'image/png')
concert1.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
concert1.save!


concert2 = Show.new(
  name: "concert2",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Post grunge"
)
concert2.category = concert
concert2.artist = myband
concert2.thumbnail.attach(io: File.open('app/assets/images/concert2.png'), filename: 'concert2.png', content_type: 'image/png')
concert2.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
concert2.save!


concert3 = Show.new(
  name: "concert3",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Post grunge"
)
concert3.category = concert
concert3.artist = myband
concert3.thumbnail.attach(io: File.open('app/assets/images/concert3.png'), filename: 'concert3.png', content_type: 'image/png')
concert3.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
concert3.save!


concert4 = Show.new(
  name: "concert4",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Post grunge"
)
concert4.category = concert
concert4.artist = myband
concert4.thumbnail.attach(io: File.open('app/assets/images/concert4.png'), filename: 'concert4.png', content_type: 'image/png')
concert4.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
concert4.save!


concert5 = Show.new(
  name: "concert5",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
  style: "Post grunge"
)
concert5.category = concert
concert5.artist = myband
concert5.thumbnail.attach(io: File.open('app/assets/images/concert5.png'), filename: 'concert5.png', content_type: 'image/png')
concert5.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
concert5.save!





puts "Finished"
