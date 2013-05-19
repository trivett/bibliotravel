class Book < ActiveRecord::Base
  attr_accessible :author, :city, :date, :title

  def self.search(search)
    if search
      find(:all, :conditions => ['city LIKE ?' "#{search}"])
    else
      find(:all)
    end
  end

end
