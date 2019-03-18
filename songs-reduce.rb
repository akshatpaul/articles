require 'csv'
songs = CSV.read('classic-rock-song-list.csv', 
                  :headers => true, 
                  :header_converters => :symbol)

total_playcount = songs.reduce(0) { |sum, song| sum + song[:playcount].to_i }
               
p total_playcount/songs.count


# With reduce
# total_playtime = songs.reduce(0) do |sum, song|
#     sum + song[:playcount].to_i
# end    

# Orig defination
# total_playtime = 0
# songs.each do |song|
#     total_playtime += song[:playcount].to_i
# end     
