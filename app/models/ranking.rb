class Ranking < ActiveRecord::Base
  belongs_to :book
  attr_accessible :ranking, :source
end
