module BooksHelper

  require 'amazon/ecs'

  Amazon::Ecs.options = {
    :associate_tag => 'bookcities-20',
    :AWS_access_key_id => ENV['AMAZON_KEY'],
    :AWS_secret_key => ENV['AMAZON_SECRET']
  }



  def book_cover_helper item
    res = Amazon::Ecs.item_search(item.isbn, { :response_group => 'Images'} )
    img_hash = res.items.first.get_hash('LargeImage')
    image_tag(img_hash['URL'], :size => '193x300')
    # img = "http://covers.librarything.com/devkey/#{ENV["LIB_THING_KEY"]}/large/isbn/#{item.isbn}"
    # img.size == 0 ? image_tag('default_cover.png') : image_tag(img)
  end

  def book_tags_helper item
    tags_set = Set.new
    tags_set.merge(item.tags)
    res = ''
    tags_set.each do |t|
      res << content_tag(:li, :class => 'btn filter', :data => { :filter => t }) do
        t.titleize
      end
    end
    res
  end
end
