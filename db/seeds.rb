# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#sandwich_orders = SandwichOrder.create([{ sandwich_type:'meaty'}, { sandwich_type:'vegan'}, { sandwich_type:'vegetarian' }, { sandwich_type:'raw' }])
#sandwich_types = SandwichType.create([{ type_meaty:'meaty'}, { type_vegetarian:'vegetarian' }, { type_vegan:'vegan'}, { type_raw:'raw' }])
sandwich_order_types = SandwichOrderType.create([{ sandwich_type:'meaty'}, { sandwich_type:'vegan'}, { sandwich_type:'vegetarian' }, { sandwich_type:'raw' }])