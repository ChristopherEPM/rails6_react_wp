# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

9.times do |i|
  Recipe.create(
    name: "Recipe #{i + 1}",
    ingredients: '227gr de crema, 25gr de mantequilla, 1 cucharadita de harina de maíz, 100gr de parmesano, nuez moscada rallada, 250gr de fettuccine o tallarines frescos, cebollino o perejil picado para servir (opcional)',
    instruction: 'En una cacerola mediana, revuelva la crema coagulada, la mantequilla y la harina de maíz y deje hervir a fuego lento. Apague el fuego y manténgase caliente.'
  )
end