class Author < ActiveRecord::Base
  attr_accessible :blurb, :born, :died, :name
  belongs_to :city
  has_many :books, :inverse_of => :author
end
