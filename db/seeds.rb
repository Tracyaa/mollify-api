# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Post.destroy_all
require 'net/http'
require 'open-uri'
require 'json'
require 'faker'

def fetch_api
  api_key = '580023c18b06bdf56399afd6824c119e'
  resource_url = 'https://api.betterdoctor.com/2016-03-01/doctors?query=mental&location=37.773%2C-122.413%2C100&user_location=37.773%2C-122.413&skip=0&limit=10&user_key=' + api_key;

	uri = URI.parse(resource_url)
	response = Net::HTTP.get_response(uri)
	character_hash = JSON.parse(response.body)
  return character_hash["data"]
end

def load_doctors
  doctors = fetch_api
  # byebug
  doctors.each do |doc|
    a = User.create(
      name: doc['profile']['first_name'] + ' ' + doc['profile']['last_name'],
      email: doc['profile']['first_name'].downcase + '@' + doc['profile']['first_name'].downcase + '.com',
      gender: doc['profile']['gender'],
      password: '12345',
      rating: [doc['ratings']],
      img_url: doc['profile']['image_url'],
      bio: doc['profile']['bio'],
      title: doc['profile']['title'],
      role: 'counselor'
    )
  end
end
# school: Faker::University.name,


User.create(name: 'Tom', email: 'tom@tom.com', password: '123', gender: 'other', age: 13, school:'Harvard')
User.create(name: 'Floppy', email: 'floppy@floppy.com', password: '12345', gender: 'male', age: 12, school:'Harvard', has_a_post: true)
User.create(name:'Potato', email:'potato@potato.com', password: '12345', gender:'female', age: 16, school:'Harvard')
User.create(name:'Walt', email:'walt@walt.com', password: '12345', gender: 'female', age: 14, school:'MIT', has_a_post: true)
User.create(name:'Jesse', email:'jesse@jesse.com', password: '12345', gender:'male', age: 15, school:'QC', has_a_post: true)
User.create(name:'Maximo', email:'maximo@maximo.com', password: '12345', gender:'female', age: 15, school:'Island', has_a_post: true)
User.create(name:'Andy', email:'andy@andy.com', password: '12345', gender:'male', age: 15, school:'Hunter')
# starting 8
load_doctors
User.create(name:'Patrick', email:'patrick@patrick.com', password: '12345', gender:'male', age: 50, role: 'counselor', location:'New York')
User.create(name:'Lyla', email:'lyla@lyla.com', password: '12345', gender:'female', age: 35, role: 'counselor', location:'New York')
User.create(name:'Tony', email:'tony@tony.com', password: '12345', gender:'female', age: 29, role: 'counselor', location:'New York')
User.create(name:'Greg', email:'greg@greg.com', password: '12345', gender:'other', age: 30, role: 'counselor', location:'New York')
User.create(name:'Corgi', email:'corgi@corgi.com', password: '12345', gender:'male', age: 23, role: 'counselor', location:'New York')

Post.create(student_id: 2, gender_preference: 'male', type: nil, content: 'I got bullied')
Post.create(student_id: 4, counselor_id: 8, gender_preference: 'other', type: nil, content: "My parents are arguing everyday... I feel terrible.", requested: true, activated: true)
Post.create(student_id: 5, gender_preference: 'female', type: nil, content: "I might be gay")
Post.create(student_id: 6, counselor_id: 9, gender_preference: 'female', type: nil, content: "Today is a nice day, but I don't wana to do anything", requested: true, activated: true)

# api_key = '580023c18b06bdf56399afd6824c119e'
# resource_url = 'https://api.betterdoctor.com/2016-03-01/doctors?query=mental&location=37.773%2C-122.413%2C100&user_location=37.773%2C-122.413&skip=0&limit=10&user_key=' + api_key
# json = open(resource_url)
# parsed = ActiveSupport::JSON.decode(json)
# require 'rest-client'
# require 'json'

#####
