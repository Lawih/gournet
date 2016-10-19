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

Chef.create( username: "LuisCS", email: "luissazon@hotmail.com", password: "123456", name: "Luis", lastname: "Con Sazon", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")
Chef.create( username: "Sambuco", email: "sambuco@hotmail.com", password: "123456", name: "Santiago", lastname: "Bufon", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")
Chef.create( username: "Esmeralda", email: "esmeralda1927@hotmail.com", password: "123456", name: "Esmeralda", lastname: "De los rios", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")
Chef.create( username:"DoñaBlanquita", email: "doniablanquita@gmail.com", password: "123456", name: "Blanca", lastname: "De arepa", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")
Chef.create( username: "Luisa", email: "luisasazonl@hotmail.com", password: "123456", name: "Luisa", lastname: "Con Sazon", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")
Chef.create( username: "Andres", email: "andreslopez@hotmail.com", password: "123456", name: "Andres", lastname: "Lopez", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")
Chef.create( username: "Felipe", email: "felipebecerra@hotmail.com", password: "123456", name: "Felipe", lastname: "Becerra", picture: "https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png")


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

Dish.create(chef_id: 7, name: "Bandeja Paisa", price: 25000, calories: 5000, score: 4.2, picture: "http://www.freeiconspng.com/uploads/food-png-6.png",description: "Una plato monstruoso. La bandeja paisa viene con carne molida, chicharrón de cerdo, aguacate, salsa, huevo, fríjoles, arroz, una arepa pequeña, y con frecuencia, 2 o 3 tipos de embutidos. Como el nombre lo dice, es más común en la zona paisa del país y encontrará la porción más grande y deliciosa en Medellín.")
Dish.create(chef_id: 7, name: "Pescado Frito", price: 17000, calories: 2200, score: 4.0, picture: "http://www.freeiconspng.com/uploads/food-png-6.png", description: "Hay muchas variaciones de este plato, pero las más populares vienen con Mojarra, Bagre o Sierra. El pescado se fríe entero así que la mayoría de veces se sirve tal como vino del agua, acompañado de arroz, fríjoles, ensalada y plátano frito.")
Dish.create(chef_id: 8, name: "Ajiaco", price: 15000, calories: 2300, score: 4.7, picture: "http://www.freeiconspng.com/uploads/food-png-6.png",description: "El Ajiaco es una sopa hecha con tres diferentes tipos de papa (Colombia tiene una gran variedad), pollo, alcaparras, mazorca y arroz. Siempre hay discusiones sobre dónde conseguir el mejor ajiaco, así que nosotros recomendamos el Ajiaco Santafereño que se encuentra en Bogotá.")
Dish.create(chef_id: 8, name: "Sancocho", price: 13000, calories: 1200, score: 4.4, picture: "http://www.freeiconspng.com/uploads/food-png-6.png", description: "El Sancocho es una sopa que se prepara de diferentes formas, según la región. El de pescado es muy popular, aunque esta sopa es algo así como una parrillada mixta, ya que se prepara con diferentes tipos de carnes como pollo, carne, cerdo y algunas veces más variedad. Uno de los mejores se puede encontrar en Andrés Carne de Res.")
Dish.create(chef_id: 9, name: "Lechona", price: 12000, calories: 3300, score: 4.3, picture: "http://www.freeiconspng.com/uploads/food-png-6.png",description: "La Lechona es un plato típico de la región del Tolima que consiste en cerdo relleno de guisantes, cebolla, arroz y varias especies (con su cabeza visible) y se acompaña con arepas. Para asegurar que la carne sea tierna, la lechona se cocina por hasta 10 horas a fuego lento.")
Dish.create(chef_id: 9, name: "Posta Negra", price: 22000, calories: 4200, score: 4.6, picture: "http://www.freeiconspng.com/uploads/food-png-6.png", description: "Posta Negra es un plato tradicional de la Costa Caribe, en especial de Cartagena. Gracias a las variaciones en su preparación, es muy difícil probar dos platos iguales en lugares diferentes, pero básicamente se compone de carne de res finamente cortada y marinada con cebolla, vinagre, ajo y otras hierbas. Se acompaña con arroz.")
Dish.create(chef_id: 10, name: "Mote de Queso", price: 7000, calories: 1300, score: 3.9, picture: "http://www.freeiconspng.com/uploads/food-png-6.png",description: "El Mote de Queso es otro plato de la Costa Caribe. Es una sopa preparada con cebolla, ajo, limón, queso costeño y ñame o yuca.")
Dish.create(chef_id: 10, name: "Tamal", price: 5000, calories: 2200, score: 4.4, picture: "http://www.freeiconspng.com/uploads/food-png-6.png", description: "Hecho de arroz, harina de color amarillo o blanco, carne de cerdo, pollo, huevo, zanahoria, a veces, guisantes, patatas y envuelto y cocinado en hojas de plátano es ideal para un buen desayuno o una onces de la tarde")
Dish.create(chef_id: 11, name: "Arroz con coco", price: 16000, calories: 2300, score: 4.7, picture: "http://www.freeiconspng.com/uploads/food-png-6.png",description: "una preparación de arroz, coco, cola o leche de coco, con textura interesante y un sabor único.")
Dish.create(chef_id: 12, name: "Arroz con pollo", price: 17000, calories: 3200, score: 4.6, picture: "http://www.freeiconspng.com/uploads/food-png-6.png", description: "Es algo así como la paella de fama mundial, pero sólo mariscos pollo, su consistencia es similar y se prepara con arroz, guisantes, zanahoria, pimentón, cebolla, chorizo y frijoles, se pueden encontrar en cualquier región de Colombia.")
Dish.create(chef_id: 12, name: "Fritanga", price: 32000, calories: 5300, score: 4.9, picture: "http://www.freeiconspng.com/uploads/food-png-6.png",description: "La fritanga tiene chorizos de cerdo, rellena (arroz, sangre de cerdo cocida(llamada morcilla) , arvejas en envuelto en tripas), pepitoria de cordero, y frituras varias de órganos de vaca como el pulmón (bofe), el hígado, el cerebro , o testículos de toro (criadillas).")
Dish.create(chef_id: 13, name: "Mondongo antioqueño", price: 22000, calories: 4200, score: 4.6, picture: "http://www.freeiconspng.com/uploads/food-png-6.png", description: "El mondongo es una sopa que se prepara con la carne del estomago de res, limpia y cortada en trozos finos; carne blanda de cerdo, también cortada en trocitos; varios vegetales y verduras, todo cocinado por largo tiempo y acompañado de aliños y especias")
Dish.create(chef_id: 13, name: "Ajiaco santafereño", price: 7000, calories: 1300, score: 4.9, picture: "http://www.freeiconspng.com/uploads/food-png-6.png",description: "Plato tipico bogotano. Consiste en una sopa de pollo que contiene diferentes tipos de papa y se puede servir sola o con crema de leche y alcaparras encurtidas, generalmente en tazones de barro cocido. El ajiaco colombiano también suele incluir mazorcas de maíz tierno.
SE ACOMPAÑA DE AGUACATE, ARROZ BLANCO.")
Dish.create(chef_id: 13, name: "Buñuelo de maiz", price: 3000, calories: 1200, score: 4.1, picture: "http://www.freeiconspng.com/uploads/food-png-6.png", description: "Son preparados con maiz biche molido,cebollin,ajo. Se acompañan con queso.")


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
Following.create(chef_id: 7, user_id: 1, is_favorite: false)
