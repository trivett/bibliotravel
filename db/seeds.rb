# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

City.delete_all
Book.delete_all
Author.delete_all

c1 = City.create(name: 'New York', country: 'USA')
c2 = City.create(name: 'San Francisco', country: 'USA')
c3 = City.create(name: 'London', country: 'UK')
c4 = City.create(name: 'Mexico City', country: 'Mexico')
c5 = City.create(name: 'Tokyo', country: 'Japan')

Author.create(name: 'Herman Melville', city_id: c1.id, blurb: 'American novelist, short story writer, essayist, and pffoet. He is best known for his novel Moby-Dick. His first three books gained much contemporary attention (the first, Typee, became a bestseller), but after a fast-blooming literary success in the late 1840s, his popularity declined precipitously in the mid-1850s and never recovered during his lifetime.')

file1 = Rails.root + "nybooks.csv"
file2 = Rails.root + "sfbooks.csv"
file3 = Rails.root + "londonbooks.csv"

CSV.foreach(file3) do |row|
  a = Author.create!({ :name => row[0]}, :city_id => c3.id )
  Book.create!({
    :title => row[1],
    :author_id => a.id,
    :city_id => c3.id,
    :isbn => row[2],
    :blurb => row[3],
    :tags => row[4]
  })
end

# CSV.foreach(file2, :headers => true) do |row|
#   a = Author.create!({ :name => row[1]} ) 
#   Book.create!({
#     :title => row[0],
#     :author_id => a.id,
#     :city_id => c2.id
#   })
# end
