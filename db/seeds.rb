# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Store.delete_all

Product.create!([
    {id: 1,  name: 'Apple', price: 0.99},
    {id: 2,  name: 'Banana', price: 0.55},
    {id: 3,  name: 'Dragon Fruit', price: 2.00},
    {id: 4,   name: 'Beef Tenderloin', price: 8.54},
    {id: 5,   name: 'White Truffle Mushrooms', price: 250.00}
])

Store.create!([
    {id: 1, address: 1332, street: 'Lethargic Ln', zip: 87787, phone: 7897515465},
    {id: 2, address: 5443, street: 'Sad St', zip: 84485, phone: 8794562154},
    {id: 3, address: 7864, street: 'Angry Ave', zip: 87988, phone: 9875654213},
    {id: 4, address: 12345, street: 'Woeful Way', zip: 87555, phone: 7895462123},
    {id: 5, address: 7563, street: 'Sad Cr', zip: 87952, phone: 1203458796},
    {id: 6, address: 8875, street: 'Rampant Rd', zip: 87511, phone: 1305462879}
])