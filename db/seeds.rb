User.destroy_all
Buddy.destroy_all
user = User.create!(email: "lolo@gmail.com", password: "valentine")
user2 = User.create!(email: "valou@gmail.com", password: "valentine")

Buddy.create!(
  user_id: user.id,
  name: "Cyril",
  description: "Developpeur Ruby hors paire",
  options: "Organisateur de wE, Garçon en or ",
  price_per_day: 3000
)
Buddy.create!(
  user_id: user2.id,
  name: "Tom",
  description: "Developpeur de pintes",
  options: "Tombeur de bouteilles, Motivé à 1000%",
  price_per_day: 38
)
Buddy.create!(
  user_id: user.id,
  name: "Jeremy",
  description: "Developpeur de blagues",
  options: "Astronaute le week-end, Fan de sport",
  price_per_day: 563
)
Buddy.create!(
  user_id: user2.id,
  name: "Johanna",
  description: "Developpeuse Fashion",
  options: "Vient du futur, Chanteuse",
  price_per_day: 812
)
Buddy.create!(
  user_id: user.id,
  name: "Zak",
  description: "Prof des developpeurs",
  options: "Fan de patisseries, Sexy ",
  price_per_day: 50000
)
Buddy.create!(
  user_id: user2.id,
  name: "Constance",
  description: "Developpeuse Fullbar",
  options: "Soins des cheveux, A toujours besoin de Zak",
  price_per_day: 656
)
Buddy.create!(
  user_id: user.id,
  name: "Valentine",
  description: "Developpeuse en herbe",
  options: "Souffleuse de verre, Fan de voile",
  price_per_day: 63
)
Buddy.create!(
  user_id: user2.id,
  name: "Gaulthier",
  description: "Developpeur nocturne",
  options: "Strip teaseur, Gagnant de l'amour est dans le prés ",
  price_per_day: 1342
)
