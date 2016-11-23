# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Diner.create( username:"JonathanCH", email: "jonathanch@gmail.com", password: "123456", name: "Jonathan", lastname: "Con Hambre", picture: "https://cdn2.iconfinder.com/data/icons/rcons-user/32/male-shadow-fill-circle-512.png")
Diner.create( username:"EstebanRoja", email: "esteban_roj@gmail.com", password: "123456", name: "Esteban", lastname: "Rojano", picture: "https://cdn2.iconfinder.com/data/icons/rcons-user/32/male-shadow-fill-circle-512.png")
Diner.create( username:"JaimeC", email: "jaimecastill@gmail.com", password: "123456", name: "Jaime", lastname: "Castellanos", picture: "https://cdn2.iconfinder.com/data/icons/rcons-user/32/male-shadow-fill-circle-512.png")
Diner.create( username:"Lawiih", email: "lauvlvlvl@gmail.com", password: "123456", name: "Laura", lastname: "Alvarez", picture: "https://cdn2.iconfinder.com/data/icons/rcons-user/32/male-shadow-fill-circle-512.png")
Diner.create( username:"AndresL", email: "andresl@gmail.com", password: "123456", name: "Andres", lastname: "Linares", picture: "https://cdn2.iconfinder.com/data/icons/rcons-user/32/male-shadow-fill-circle-512.png")
Diner.create( username:"JuanC", email: "juanc@gmail.com", password: "123456", name: "Juan", lastname: "Castrillon", picture: "https://cdn2.iconfinder.com/data/icons/rcons-user/32/male-shadow-fill-circle-512.png")

Chef.create( username: "LuisCS", email: "luissazon@hotmail.com", password: "123456", name: "Luis", lastname: "Con Sazon", bio:"Lo importante no es lo que se come, sino cómo se come.", picture: "https://storage.googleapis.com/gournet_photos/user_pictures/luissazon@hotmail.com/profile_4.png")
Chef.create( username: "Sambuco", email: "sambuco@hotmail.com", password: "123456", name: "Santiago", lastname: "Bufon", bio:"La vida interior necesita una casa confortable y una buena cocina.", picture: "https://media1.agfg.com.au/images/chefs/19/hero-300.jpg")
Chef.create( username: "Esmeralda", email: "esmeralda1927@hotmail.com", password: "123456", name: "Esmeralda", lastname: "De los rios", bio:"Una receta por sí misma no tiene alma, es tu trabajo dársela.", picture: "https://storage.googleapis.com/gournet_photos/user_pictures/esmeralda1927@hotmail.com/profile_1.png")
Chef.create( username:"DoñaBlanquita", email: "doniablanquita@gmail.com", password: "123456", name: "Blanca", lastname: "De arepa", bio:"Comienza tu día con café y termina tu día con vino.", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")
Chef.create( username: "LuisaC", email: "luisasazonl@hotmail.com", password: "123456", name: "Luisa", lastname: "Con Sazon", bio:"Comer es una necesidad, pero cocinar es un gran arte.", picture: "https://yt3.ggpht.com/-lVmy50X4Zmg/AAAAAAAAAAI/AAAAAAAAAAA/ZiG8efeIBgw/s900-c-k-no-mo-rj-c0xffffff/photo.jpg")
Chef.create( username: "Andres", email: "andreslopez@hotmail.com", password: "123456", name: "Andres", lastname: "Lopez", bio:"Cuando la vida te da limones haz lemon pie.", picture: "https://storage.googleapis.com/gournet_photos/user_pictures/andreslopez@hotmail.com/profile_3.png")
Chef.create( username: "Felipe", email: "felipebecerra@hotmail.com", password: "123456", name: "Felipe", lastname: "Becerra", bio:"La cocina no la puedes separar de la persona que la hace ni del lugar donde la consumes.", picture: "https://media1.agfg.com.au/images/chefs/235/gallery/justin-north-agfg-chef-profile.jpg")

Admin.create(username: "SuperU", email: "maxpower@hotmail.com", password: "123456", name: "Super", lastname: "Usuario")

Ingredient.create( name: "Tomate" )
Ingredient.create( name: "Espinaca" )
Ingredient.create( name: "Pollo" )
Ingredient.create( name: "Res" )
Ingredient.create( name: "Ajo" )
Ingredient.create( name: "Arroz" )
Ingredient.create( name: "Coco" )
Ingredient.create( name: "Caramelo" )
Ingredient.create( name: "Huevo" )
Ingredient.create( name: "Leche" )
Ingredient.create( name: "Maní" )
Ingredient.create( name: "Cebolla" )

DishEvaluation.create(user_id: 1, dish_id: 1, score_time: 4, score_quality: 4, score_visual: 4, comment: "El plato estaba caliente y  muy rico")
DishEvaluation.create(user_id: 2, dish_id: 1, score_time: 3, score_quality: 4, score_visual: 4, comment: "El plato llego un poco tarde pero tenia muy buen sabor")
DishEvaluation.create(user_id: 3, dish_id: 4, score_time: 4, score_quality: 5, score_visual: 3, comment: "El plato venia un poco revuelto, llego rapido y estaba delicioso")
DishEvaluation.create(user_id: 4, dish_id: 4, score_time: 4, score_quality: 4, score_visual: 4, comment: "El plato estaba caliente y  muy rico")
DishEvaluation.create(user_id: 5, dish_id: 5, score_time: 4, score_quality: 4, score_visual: 4, comment: "El plato estaba caliente y  muy rico")
DishEvaluation.create(user_id: 6, dish_id: 6, score_time: 4, score_quality: 4, score_visual: 4, comment: "El plato estaba caliente y  muy rico")
DishEvaluation.create(user_id: 1, dish_id: 7, score_time: 4, score_quality: 4, score_visual: 4, comment: "El plato estaba caliente y  muy rico")
DishEvaluation.create(user_id: 1, dish_id: 8, score_time: 4, score_quality: 4, score_visual: 4, comment: "El plato estaba caliente y  muy rico")

Following.create(chef_id: 7, user_id: 1, is_favorite: false)
Following.create(chef_id: 7, user_id: 2, is_favorite: true)
Following.create(chef_id: 10, user_id: 3, is_favorite: true)
Following.create(chef_id: 12, user_id: 1, is_favorite: false)
Following.create(chef_id: 13, user_id: 2, is_favorite: true)
Following.create(chef_id: 8, user_id: 4, is_favorite: true)

# Rotten
Offer.create(dish_id: 1, amount: 20, delivery_date: "2016-10-21 07:00:00", max_date: "2016-10-21 05:00:00", is_active: true)
Offer.create(dish_id: 1, amount: 10, delivery_date: "2016-10-22 07:00:00", max_date: "2016-10-22 05:00:00", is_active: true)
# Not Rotten
Offer.create(dish_id: 1, amount: 20, delivery_date: "2016-12-21 07:00:00", max_date: "2016-12-21 05:00:00", is_active: true)
Offer.create(dish_id: 1, amount: 10, delivery_date: "2016-12-22 07:00:00", max_date: "2016-12-22 05:00:00", is_active: true)
Offer.create(dish_id: 2, amount: 10, delivery_date: "2016-12-22 07:00:00", max_date: "2016-12-22 05:00:00", is_active: true)
Offer.create(dish_id: 3, amount: 10, delivery_date: "2016-12-22 07:00:00", max_date: "2016-12-22 05:00:00", is_active: true)
# Inactive
Offer.create(dish_id: 1, amount: 20, delivery_date: "2016-12-21 07:00:00", max_date: "2016-12-21 05:00:00", is_active: false)

#
Order.create(user_id: 1,offer_id: 3, amount: 5, date: "2016-12-21 08:00:00", comment: "Quiero 5 bandejas sin chicharron, gracias")
Order.create(user_id: 1,offer_id: 5, amount: 3, date: "2016-12-21 08:00:00", comment: "Quiero 3 pescados, gracias")
Order.create(user_id: 2,offer_id: 3, amount: 5, date: "2016-12-21 08:00:00", comment: "Deme 5 bandejas calientes, gracias")
Order.create(user_id: 2,offer_id: 5, amount: 2, date: "2016-12-21 08:00:00", comment: "Deme 2 pescados sin chicharron, gracias")
Order.create(user_id: 2,offer_id: 6, amount: 1, date: "2016-12-21 08:00:00", comment: "Deme un ajiaco, gracias")
Order.create(user_id: 1,offer_id: 6, amount: 1, date: "2016-12-21 08:00:00", comment: "Quiero un ajiaco, gracias")

FavoriteDish.create(user_id: 1, dish_id:1)
FavoriteDish.create(user_id: 1, dish_id:9)
FavoriteDish.create(user_id: 2, dish_id:3)
FavoriteDish.create(user_id: 2, dish_id:4)
FavoriteDish.create(user_id: 2, dish_id:5)
FavoriteDish.create(user_id: 1, dish_id:6)
FavoriteDish.create(user_id: 3, dish_id:7)
FavoriteDish.create(user_id: 4, dish_id:8)
FavoriteDish.create(user_id: 5, dish_id:2)

DishImage.create(dish_id: 2, picture_url:"pescado.jpg")
DishImage.create(dish_id: 1, picture_url:"bandeja-paisa-500926.jpg")
