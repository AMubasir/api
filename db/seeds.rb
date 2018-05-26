# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create( email: "example@testing.com",
                 username: "darklady",
                 password: "password" )

c = Category.create([ {culinary: "Gudeg", language: "Transactions"}, 
                      {culinary: "Sate", language: "Greetings"},
                      {culinary: "Snack"},
                      {culinary: "Drink"},
                      {culinary: "Others"},
                    ])

d = Culinary.create( name: "Gudeg Pawon",
                     description: "Open: 22:00 - Rp.17,000/ US$1.25 per portion. Established since 1958 by Prapto Widarso. It became so popular up to the point where he decided to open his own kitchen doors to the public and invited customers to come and dine in the comfort of his own cooking area. Gudeg Pawon doesn’t have a proper dining area, guests are given the liberty to choose wherever they wanted to have their meal. If you’re keen on sampling true-blue Javanese Gudeg, then Gudeg Pawon is where it’s at. The queue tends to get worse as the night wears on, so it’s highly recommended that you make your way there way ahead of its opening time.
")