require 'csv'

desc 'import book data from csv'
task :import_books => [:environment] do


  Book.delete_all

  file1 = Rails.root + "nybooks.csv"
  file2 = Rails.root + "sfbooks.csv"

  CSV.foreach(file1, :headers => true) do |row|
    Book.create!({
      :title => row[0],
      :author => row[1],
      :city => 'New York'
    })
  end

  CSV.foreach(file2, :headers => true) do |row|
    Book.create!({
      :title => row[0],
      :author => row[1],
      :city => 'San Francisco'
    })
  end
end