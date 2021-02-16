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

paul_taylor = Artist.create!(name: "Paul Taylor")
issa_doumbia = Artist.create!(name: "Issa Doumbia")
laura_laune = Artist.create!(name: "Laura Laune")
elodie_poux = Artist.create!(name: "Elodie Poux")
jean_racine = Artist.create!(name: "Jean Racine")



#--------------------------------------------------------
puts "Seeding show"

so_british = Show.new(
  name: "SO BRITISH ou presque",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "15/11/2020",
  time: "20:00",
  price: 8,
)
so_british.category = comedy
so_british.artist = paul_taylor
so_british.thumbnail.attach(io: File.open('app/assets/images/so_british.png'), filename: 'so_british_photo.png', content_type: 'image/png')
so_british.wide_poster.attach(io: File.open('app/assets/images/so_british_wide.png'), filename: 'so_british_wide_photo.png', content_type: 'image/png')
so_british.save!

andromaque = Show.new(
  name: "Andromaque",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eros velit, vulputate at auctor vitae, ultrices vel lacus. Nunc aliquet felis eget ligula molestie, a eleifend nulla rutrum. Suspendisse justo ligula, aliquam at dapibus et, rutrum a odio. Curabitur quis justo ac lectus congue sagittis. Fusce nec porttitor felis. Vestibulum leo diam, dictum vel quam vitae, consectetur rhoncus sapien. Vestibulum vel tellus ullamcorper, rutrum arcu vel, pellentesque urna. Praesent eget maximus enim....",
  date: "20/10/2020",
  time: "20:00",
  price: 8,
)
andromaque.category = theater
andromaque.artist = jean_racine
andromaque.thumbnail.attach(io: File.open('app/assets/images/andromaque.png'), filename: 'andromaque_photo.png', content_type: 'image/png')
andromaque.wide_poster.attach(io: File.open('app/assets/images/andromaque_wide.png'), filename: 'andromaque_wide_photo.png', content_type: 'image/png')
andromaque.save!




puts "Finished"
