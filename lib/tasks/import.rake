require 'csv'

desc 'import book data from csv'
task :import_books => [:environment] do

  file = Rails.root + "nybooks.csv"

  CSV.foreach(file, :headers => true) do |row|
    Book.create!({
      :title => row[0],
      :author => row[1],
      :city => 'New York'
      # :date => Date.new(row[2])
    })
  end
end