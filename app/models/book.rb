class Book < ActiveRecord::Base
  attr_accessible :author, :city, :date, :title, :city_id, :author_id
  belongs_to :author
  belongs_to :city

  def self.search(search)
    if search
      find(:all, :conditions => ['city LIKE ?' "#{search}"])
    else
      find(:all)
    end
  end

end
