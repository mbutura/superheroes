# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

flash = Hero.create(name: 'Barry Allen', super_name: 'Flash')
spider_man = Hero.create(name: 'Peter Parker', super_name: 'Spiderman')
bat_man = Hero.create(name: 'Bruce Wayne', super_name: 'Batman')

rich_power = Power.create(name: 'Rich', description: 'None...he/she is rich. What more can be said omera')
websling_power = Power.create(name: 'Websling', description: 'Shoot webs. He is a cool cat bfrom manhattan')
speed_power = Power.create(name: 'Super speed', description: 'Super speec, can feed timeforce')

HeroPower.create(strength: 'Average', hero_id: flash.id, power_id: speed_power.id)
HeroPower.create(strength: 'Average', hero_id: spider_man.id, power_id: websling_power.id)
HeroPower.create(strength: 'Strong', hero_id: bat_man.id, power_id: rich_power.id)