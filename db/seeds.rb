# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w[
  cool_pants
  neat_shoes
  fun_purse
].each do |product_name|
  (1..15).each do |n|
    Product.find_or_create_by!(name: "#{product_name}_#{n}")
    print "."
  end
end

puts
