# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    Canada = Country.create([{ name: 'Canada', opinion_of_usa: 'very friendly' }])

    Mexico = Country.create([{ name: 'Mexico', opinion_of_usa: 'friendly' }])

    Iran = Country.create([{ name: 'Iran', opinion_of_usa: 'very unfriendly' }])

    Iraq = Country.create([{ name: 'Iraq', opinion_of_usa: 'unfriendly' }])