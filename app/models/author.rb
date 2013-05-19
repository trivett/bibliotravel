class Author < ActiveRecord::Base
  attr_accessible :blurb, :born, :died, :name
  belongs_to :city
end
