User.destroy_all
user = User.create!(email: "lolo@gmail.com", password: "valentine")
user2 = User.create!(email: "valou@gmail.com", password: "valentine")

cyril = Buddy.create!(
  user_id: user.id,
  name: "Cyril",
  category: "Minot",
  description: "Developpeur Ruby hors pair",
  options: "Organisateur de wE, Garçon en or ",
  price_per_day: 3000
)
cyril.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/168377535?v=4'), filename: 'cyril.jpg')

tom = Buddy.create!(
  user_id: user2.id,
  name: "Tom",
  category: "Estrasse",
  description: "Developpeur de pintes",
  options: "Tombeur de bouteilles, Motivé à 1000%",
  price_per_day: 38
)

tom.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/168112543?v=4'), filename: 'tom.jpg')

jeremy = Buddy.create!(
  user_id: user.id,
  name: "Jeremy",
  category: "Brèle",
  description: "Developpeur de blagues",
  options: "Astronaute le week-end, Fan de sport",
  price_per_day: 563
)

jeremy.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/168118304?v=4'), filename: 'jeremy.jpg')

johanna = Buddy.create!(
  user_id: user2.id,
  name: "Johanna",
  category: "Estrasse",
  description: "Developpeuse Fashion",
  options: "Vient du futur, Chanteuse",
  price_per_day: 812
)

johanna.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/147168485?v=4'), filename: 'johanna.jpg')

zak = Buddy.create!(
  user_id: user.id,
  name: "Zak",
  category: "Tarpin",
  description: "Prof des developpeurs",
  options: "Fan de patisseries, Sexy ",
  price_per_day: 50000
)

zak.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/81274368?v=4'), filename: 'zak.jpg')

constance = Buddy.create!(
  user_id: user2.id,
  name: "Constance",
  category: "Minot",
  description: "Developpeuse Fullbar",
  options: "Soins des cheveux, A toujours besoin de Zak",
  price_per_day: 656
)

constance.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1716219804/evzvhpbspyx9yttout2j.jpg'), filename: 'constance.jpg')

valentine = Buddy.create!(
  user_id: user.id,
  name: "Valentine",
  category: "Tarpin",
  description: "Developpeuse en herbe",
  options: "Souffleuse de verre, Fan de voile",
  price_per_day: 263
)

valentine.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1714378416/t0nja9xqjtybnvhmh9ms.jpg'), filename: 'valentine.jpg')

gaulthier = Buddy.create!(
  user_id: user2.id,
  name: "Gaulthier",
  category: "Brèle",
  description: "Developpeur nocturne",
  options: "Strip teaseur, Gagnant de l'amour est dans le prés ",
  price_per_day: 1342
)

gaulthier.photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1714377165/mlsovzrfoch2ulkgsoc0.jpg'), filename: 'gaulthier.jpg')
