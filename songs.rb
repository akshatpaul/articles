require 'csv'
songs = CSV.read('classic-rock-song-list.csv', 
                  :headers => true, 
                  :header_converters => :symbol)
          
artists = songs.map { |song| song[:artist] }
                  
p artists.first


# With Map
# artists = songs.map do |song|
#     song[:artist]
# end

# Orig defination
# artists = []
# songs.each do |song|
#     artists << song[:artist]
# end

