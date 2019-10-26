# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

english = Language.create(name: "English")
arabic = Language.create(name: "Arabic")
portuguese = Language.create(name: "Portuguese")

topic1 = Topic.create(name: "Test Topic 1")
topic2 = Topic.create(name: "Test Topic 2")

user1 = User.create(
  first_name: "Rhok",
  last_name: "Star",
  email: "rhokstar@rhoksta.rs",
  password: "scrypt",
)

speaker1 = Speaker.new(
  pronouns: "Ze/Zir/Zirs",
  location: "Ottawa",
  will_travel: false,
  occupation: "Rhok star",
  tagline: "Random Hacks of Kindness",
  image: "face.png",
  video: "talk.mp4",
  instagram: "@rhokstar",
  twitter: "@rhokstar",
  website: "rhoksta.rs",
  biography: "Random Hacks of Kindness is a hackathon for social good that brings together volunteer developers and tech-savvy do-gooders to work with charities, community groups and social enterprises."
)
speaker1.languages = [english, arabic, portuguese]
speaker1.topics = [topic1, topic2]
speaker1.user = user1
speaker1.save!


