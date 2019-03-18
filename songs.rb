require 'csv'
songs = CSV.read('classic-rock-song-list.csv', :headers => true, :header_converters => :symbol)

p songs.count