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
User.create(name: 'Floppy', email: 'floppy@floppy.com', password: '12345', gender: 'male', age: 12, school:'Harvard')
User.create(name:'Potato', email:'potato@potato.com', password: '12345', gender:'female', age: 16, school:'Harvard')
User.create(name:'Walt', email:'walt@walt.com', password: '12345', gender: 'female', age: 14, school:'MIT')
User.create(name:'Jesse', email:'jesse@jesse.com', password: '12345', gender:'female', age: 15, school:'QC')

User.create(name:'Patrick', email:'patrick@patrick.com', password: '12345', gender:'male', age: 50, role: 'counselor', location:'New York')
User.create(name:'Lyla', email:'lyla@lyla.com', password: '12345', gender:'female', age: 35, role: 'counselor', location:'New York')
User.create(name:'Tony', email:'tony@tony.com', password: '12345', gender:'female', age: 35, role: 'counselor', location:'New York')

# Post.create(student_id: 1, counselor_id: 5, gender_preference: 'male', type: nil, content: 'I got bullied')
# Post.create(student_id: 2, counselor_id: 6, gender_preference: 'female', type: nil, content: "I'm gay")



#####
