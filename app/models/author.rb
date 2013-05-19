class Author < ActiveRecord::Base
  attr_accessible :blurb, :born, :died, :name
end
