module BooksHelper

  def book_cover_helper item
    img = "http://covers.librarything.com/devkey/#{ENV["LIB_THING_KEY"]}/large/isbn/#{item.isbn}"
    img.size == 0 ? image_tag('default_cover.png') : image_tag(img)
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
