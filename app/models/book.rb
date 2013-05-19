class Book < ActiveRecord::Base
  attr_accessible :author, :city, :date, :title
  belongs_to :author, :inverse_of => :book
  belongs_to :city, :inverse_of => :city

  def self.search(search)
    if search
      find(:all, :conditions => ['city LIKE ?' "#{search}"])
    else
      find(:all)
    end
  end

end
