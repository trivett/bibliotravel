class City < ActiveRecord::Base
  attr_accessible :country, :lat, :long, :name
  has_many :authors
  has_many :books, :through => :authors


end
