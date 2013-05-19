class Author < ActiveRecord::Base
  attr_accessible :blurb, :born, :died, :name, :city_id
  belongs_to :city
  has_many :books
end
