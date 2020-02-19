# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create(name: 'Thailander', address: 'Thailand', phone_number: '555-2323', category: 'chinese')
Restaurant.create(name: 'Teta Mona', address: 'Lygon St', phone_number: '555-12121', category: 'japanese')
Restaurant.create(name: '400 Gradi', address: 'Tuscany', phone_number: '555-8000', category: 'italian')
Restaurant.create(name: 'Bonzai', address: 'Japan', phone_number: '555-1200', category: 'french')
Restaurant.create(name: 'B. East', address: 'Brunswick', phone_number: '555-4440', category: 'french')
