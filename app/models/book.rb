class Book < ActiveRecord::Base
  attr_accessible :date, :title, :city_id, :author_id
  belongs_to :author
  belongs_to :city

  def self.search(search)
    city_id = City.where(:name => search).first.id
    if search
      find(:all, :conditions => ['city_id == ?', city_id])
    else
      find(:all)
    end
  end

end
