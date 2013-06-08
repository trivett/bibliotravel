class Book < ActiveRecord::Base
  include InferredSlug::Slug

  attr_accessible :date, :title, :city_id, :author_id, :tags, :blurb, :isbn
  belongs_to :author
  belongs_to :city

  def slug
    tit = self.title.parameterize.strip
    tit.gsub! /['`]/, ''
    tit.gsub! /\s*[^A-Za-z0-9\.]\s*/, '-'
    tit.gsub! /-+/, '-'
    # tit.gsub! /\A[-\.]+|[-\.]+\z/, ''
    "#{id}-#{tit}"
  end

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
