class City < ActiveRecord::Base
  attr_accessible :country, :lat, :long, :name
end
