desc 'import top 100 data from guardian website'
task :guardian_import => [:environment] do

  require 'open-uri'
  require 'nokogiri'
  require 'sequel'

  guardian_top_100 = "http://www.guardian.co.uk/books/2003/oct/12/features.fiction"

  guard_page = Nokogiri::HTML(open(guardian_top_100))


  entries = guard_page.css('div#article-body-blocks p')



  entries.each do |e|
    content = e.to_html
    bits = content.split('<br>')
    begin
      rank = bits[0].match(/>\s?(\d+)\./)[1]
      title = bits[0].match(/\s([\w\s?]+?)<\//)[1]
      author = bits[0].match(/\/strong>\s+([\w\.?\s?]+)/)[1]
      a = Author.find_or_create_by_name(name: author)
      b = Book.create(title: title)
      Ranking.create(source: 'guardian', ranking: rank, book_id: b.id)
    rescue
      next
    end
  end
end

