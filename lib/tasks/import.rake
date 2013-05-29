require 'csv'

desc 'import book data from csv'
task :import_books => [:environment] do



  file1 = Rails.root + "nybooks.csv"

  ny = City.where(name: 'New York').first

  CSV.foreach(file1) do |row|
    a = Author.create!({ :name => row[0]}, :city_id => ny.id )
    Book.create!({
      :title => row[1],
      :author_id => a.id,
      :city_id => ny.id,
      :isbn => row[2],
      :blurb => row[3],
      :tags => row[4]
    })
  end
  # CSV.foreach(file2, :headers => true) do |row|
  #   Book.create!({
  #     :title => row[0],
  #     :author => row[1],
  #     :city => 'San Francisco'
  #   })
  # end
end