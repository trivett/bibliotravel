class Book < ActiveRecord::Base
  attr_accessible :date, :title, :city_id, :author_id, :tags, :blurb, :isbn
  belongs_to :author
  belongs_to :city

  def self.search(search)
    begin
      if search
        city_id = City.where(:name => search.titleize).first.id
        where('city_id = ?', city_id)
      else
        all
      end
    rescue
      nil
    end
  end

end
