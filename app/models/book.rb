class Book < ActiveRecord::Base
  attr_accessible :author, :city, :date, :title
end
