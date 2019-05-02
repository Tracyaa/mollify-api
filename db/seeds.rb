# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Post.destroy_all

User.create(name: 'Tom', email: 'tom@tom.com', password: '123', gender: 'other', age: 13, school:'Harvard')
User.create(name: 'Floppy', email: 'floppy@floppy.com', password: '12345', gender: 'male', age: 12, school:'Harvard', has_a_post: true)
User.create(name:'Potato', email:'potato@potato.com', password: '12345', gender:'female', age: 16, school:'Harvard')
User.create(name:'Walt', email:'walt@walt.com', password: '12345', gender: 'female', age: 14, school:'MIT', has_a_post: true)
User.create(name:'Jesse', email:'jesse@jesse.com', password: '12345', gender:'male', age: 15, school:'QC', has_a_post: true)
User.create(name:'Maximo', email:'maximo@maximo.com', password: '12345', gender:'female', age: 15, school:'Island', has_a_post: true)
User.create(name:'Andy', email:'andy@andy.com', password: '12345', gender:'male', age: 15, school:'Hunter')
# starting 8
User.create(name:'Patrick', email:'patrick@patrick.com', password: '12345', gender:'male', age: 50, role: 'counselor', location:'New York')
User.create(name:'Lyla', email:'lyla@lyla.com', password: '12345', gender:'female', age: 35, role: 'counselor', location:'New York')
User.create(name:'Tony', email:'tony@tony.com', password: '12345', gender:'female', age: 29, role: 'counselor', location:'New York')
User.create(name:'Greg', email:'greg@greg.com', password: '12345', gender:'other', age: 30, role: 'counselor', location:'New York')
User.create(name:'Corgi', email:'corgi@corgi.com', password: '12345', gender:'male', age: 23, role: 'counselor', location:'New York')

Post.create(student_id: 2, gender_preference: 'male', type: nil, content: 'I got bullied')
Post.create(student_id: 4, counselor_id: 8, gender_preference: 'other', type: nil, content: "I want to jump off the window", activated: true)
Post.create(student_id: 5, gender_preference: 'female', type: nil, content: "I might be gay")
Post.create(student_id: 6, counselor_id: 9, gender_preference: 'female', type: nil, content: "Today is a nice day, but I don't wana to do anything", activated: true)




#####
