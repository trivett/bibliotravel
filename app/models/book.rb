class Book < ActiveRecord::Base
  attr_accessible :date, :title, :city_id, :author_id
  belongs_to :author
  belongs_to :city

  def self.search(search)
    if search
      puts self.city.name
      find(:all, :conditions => ['self.city.name  ?' "#{search}"])
    else
      find(:all)
    end
  end

end
