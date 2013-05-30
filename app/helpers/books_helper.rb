module BooksHelper

  def book_cover_helper item
    img = "http://covers.librarything.com/devkey/#{ENV["LIB_THING_KEY"]}/large/isbn/#{item.isbn}"
    img.size == 0 ? image_tag('default_cover.png') : image_tag(img)
  end

end
