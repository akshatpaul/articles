require 'csv'
songs = CSV.read('classic-rock-song-list.csv', 
                  :headers => true, 
                  :header_converters => :symbol)
          
result = songs.select { |song| song[:playcount].to_i >=50 }

p result.count



# With Select
# result = songs.select do |song|
#     song[:playcount].to_i >=50
# end    

# Orig Defination
# result = []
# songs.each do |song|
#     result << song if song[:playcount].to_i >=50
# end


 


