# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    #  Category.create(name:'FORD',status: [true,false].sample)
    #  Category.create(name:'HONDA',status: [true,false].sample)
    #  Category.create(name:'CHEVROLET',status: [true,false].sample)
    #  Category.create(name:'BMW',status: [true,false].sample)
    #  Category.create(name:'SUBARU',status: [true,false].sample)
    #  Category.create(name:'MAZDA',status: [true,false].sample)
    #  Category.create(name:'TOYOTA',status: [true,false].sample)
    #  Category.create(name:'NISSAN',status: [true,false].sample)
    #  Category.create(name:'LOTUS',status: [true,false].sample)
    #  Category.create(name:'FERRARI',status: [true,false].sample)
 10.times do |i|
    #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Ford'),category_id:1)
    #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Honda'),category_id:2)
    #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Dodge'),category_id:3)
    # #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: ''),category_id:4)
    # #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Subaru'),category_id:5)
    # #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Mazda'),category_id:6)
    #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Toyota'),category_id:7)
    #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Nissan'),category_id:8)
    # #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Lotus'),category_id:9)
    # #  Subcategory.create(name:Faker::Vehicle.model(make_of_model: 'Ferrari'),category_id:10)
     Type.create(
             name:Faker::Vehicle.drive_type,  
             status: [true,false].sample               
            )
#     #  Mark.create(
#     #      name:Faker::Computer.os,
#     #      url:Faker::Internet.url,
#     #      category_id:rand(1..10),
#     #      subcategory_id:rand(1..10),
#     #      type_id:rand(1..10)         
#     #     )
     
end