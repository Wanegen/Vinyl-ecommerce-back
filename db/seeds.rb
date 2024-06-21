# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

vinyls = [
  { name: "Dark Side of the Moon", description: "The eighth studio album by the English rock band Pink Floyd, released on 1 March 1973 by Harvest Records.", price: 25 },
  { name: "Abbey Road", description: "The eleventh studio album by the English rock band the Beatles, released on 26 September 1969 by Apple Records.", price: 30 },
  { name: "Thriller", description: "The sixth studio album by American singer Michael Jackson, released on November 30, 1982 by Epic Records.", price: 20 },
  { name: "Back in Black", description: "The seventh studio album by Australian rock band AC/DC, released on 25 July 1980 by Albert Productions and Atlantic Records.", price: 22 },
  { name: "The Wall", description: "The eleventh studio album by the English rock band Pink Floyd, released as a double album on 30 November 1979 by Harvest Records.", price: 28 }
]

vinyls.each do |vinyl|
  Vinyl.create(vinyl)
end
