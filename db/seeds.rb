# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    #Countries

    Canada = Country.create([{ name: 'Canada', opinion_of_usa: 'very friendly' }])

    Iran = Country.create([{ name: 'Iran', opinion_of_usa: 'very unfriendly' }])

    Iraq = Country.create([{ name: 'Iraq', opinion_of_usa: 'unfriendly' }])

    Mexico = Country.create([{ name: 'Mexico', opinion_of_usa: 'friendly' }])

    # Relations

    Canada2 = Relation.create([{ name: 'Canada', parent_id: 1 }])

    Iran2 = Relation.create([{ name: 'Iran', parent_id: 2 }])

    Iraq2 = Relation.create([{ name: 'Iraq', parent_id: 3 }])

    Mexico2 = Relation.create([{ name: 'Mexico', parent_id: 4 }])
