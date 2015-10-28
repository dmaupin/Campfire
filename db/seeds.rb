# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipes = Recipe.create([{ title: 'Coq Au Biere',
						   decription: 'A play on Coq Au Vin, This is a recipe better suited to car camping, or a beach bonfire. I generally make it on the first night, since the idea of raw chicken sitting in the cooler for any long period of time doesn’t seem very wise.',
						   steps: 'Get a fire started, take care to not crowd the pit. After the wood has begun to break down, make pile of embers and place the dutch oven over them (ours has feet so it doesn’t sit directly on the fire, otherwise crowd the embers around the oven), Heat the oven until a splash of water will boil and evaporate rather quickly. Heat 2 T spoon of oil, season your chicken breasts with salt and pepper and brown on both sides. Set the breasts aside (transfer to a paper plate) and add the veg. Sprinkle with a T of soy sauce, a pinch of salt and pepper, and the fresh herbs. Sweat the veg briefly, when they start to carmelize return the chicken to the oven, add the beer1 and remaining soy sauce. Whatever the beer doesn’t cover, do so with water, or chicken stock2. Cover the dutch oven, place a few embers on the lid, and let cook for 45-60 minutes, stiring occasionally. When the chicken begins to fall apart it’s ready. Season to taste, and serve in bowls, or mugs.',
						   img: ''
}])