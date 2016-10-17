# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Chef.create( username: "LuisCS", email: "luissazon@hotmail.com", password: "123456", name: "Luis", lastname: "Con Sazon")
Diner.create( username:"JonathanCH", email: "jonathanch@gmail.com", password: "123456", name: "Jonathan", lastname: "Con Hambre")
Diner.create( username:"EstebanRoja", email: "esteban_roj@gmail.com", password: "123456", name: "Esteban", lastname: "Rojano")
Chef.create( username: "Sambuco", email: "sambuco@hotmail.com", password: "123456", name: "Santiago", lastname: "Bufon")
Chef.create( username: "Esmeralda", email: "esmeralda1927@hotmail.com", password: "123456", name: "Esmeralda", lastname: "De los rios")
Chef.create( username:"DoñaBlanquita", email: "doniablanquita@gmail.com", password: "123456", name: "Blanca", lastname: "De arepa")
Diner.create( username:"JaimeC", email: "jaimecastill@gmail.com", password: "123456", name: "Jaime", lastname: "Castellanos")
Diner.create( username:"Lawiih", email: "lauvlvlvl@gmail.com", password: "123456", name: "Laura", lastname: "Alvarez")
Chef.create( username: "Luisa", email: "luisasazon@hotmail.com", password: "123456", name: "Luisa", lastname: "Con Sazon")

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

Dish.create(chef_id: 1, name: "Solomillo de Ternera con Pimientos del Piquillo", price: 12000, calories: 2000, score: 4.2, description: "Sriracha poutine four dollar toast vinyl. Readymade DIY organic etsy pork belly salvia meggings jean shorts jianbing, succulents gentrify gochujang. Biodiesel church-key flexitarian edison bulb truffaut selfies, gluten-free pug sustainable. Meggings tofu ennui ramps, next level kombucha fam banjo schlitz vaporware cray cliche franzen post-ironic. Skateboard four loko lumbersexual hot chicken cold-pressed umami keffiyeh, la croix organic. Selvage PBR&B pinterest single-origin coffee meggings bicycle rights, subway tile plaid gentrify narwhal thundercats. Quinoa actually air plant, migas sustainable snackwave blue bottle vice hoodie whatever everyday carry.")
Dish.create(chef_id: 1, name: "Arroz con Pollo", price: 10000, calories: 2200, score: 4.3, description: "Mumblecore prism jianbing kombucha vinyl, drinking vinegar artisan air plant lyft next level. Glossier pop-up air plant authentic truffaut, asymmetrical cold-pressed ramps mixtape live-edge disrupt ennui. Yuccie snackwave skateboard sriracha. Listicle green juice 3 wolf moon photo booth chia cred. Glossier freegan chia, tote bag try-hard brunch farm-to-table. La croix synth pok pok flannel letterpress ennui, drinking vinegar you probably haven't heard of them fingerstache vaporware hot chicken mlkshk gochujang. Humblebrag organic kitsch cardigan, narwhal post-ironic tofu.")


Following.create(chef_id: 1, user_id: 3, is_favorite: false)
