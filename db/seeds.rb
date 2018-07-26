# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 #pour avoir le meme randow pour doctor et appointment car un doctor peut pas donner 
#un rdv dans un autre ville si on est logique
require 'faker'

10.times{City.create!(name:Faker::LeagueOfLegends.location)}
10.times{Speciality.create!(name:Faker::LeagueOfLegends.summoner_spell,doctor_id:rand(1..10))}
10.times{Doctor.create!(first_name:Faker::LeagueOfLegends.champion,last_name:Faker::GameOfThrones.house,postal_code:rand(1..95),city_id:rand(1..10))}
10.times{Patient.create!(first_name:Faker::Fallout.character,last_name:Faker::ElderScrolls.race,city_id:rand(1..10))}
10.times{Appointment.create!(doctor_id:rand(1..10),patient_id:rand(1..10), city_id:rand(1..10))}