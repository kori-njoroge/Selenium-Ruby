# String Methods

# Concat - appends the new string value with another string
puts "Gideon".concat('Kori')

first_name = "Gideon"
last_name = "Kori"

puts first_name.concat(last_name)

# Upcase - Converts the string value into uppercase
city = "Newyork City"

puts city.upcase()
puts city
puts "***********"

# Upcase! - Converts the string value to uppercase changing the original variable
puts city.upcase!
puts city

# Downcase - Converts the string value into lowercase
state = "MICHIGAN"
puts state.downcase
puts state
puts "***************"
# Downcase!- Converts the string value to lowercase changing the original variable
puts state.downcase!
puts state

# Delete - Deletes the charcter or String value from your previous string.
# - Deletes the charcters that are consecutive to each other
country = "Kenya"
puts country.delete("a")
puts country.delete("ny")

country2 = "United States"
puts  country2.delete('e') # - Deletes all the occurrences of "e"

# Replace - Replaces the original string with the new string value
county = 'Nyeri'
puts county.replace('Laikipia')

# Capitalize - capitalizes the first letter of the string
state2 = "california"
state3 = "CALIFORNIA"
puts state2.capitalize
puts state3.capitalize

# Reverse - Reverses the characters of a string
fruit = "Orange"
puts fruit.reverse

# Length - Counts the number of Characters in a string, Gives the length of the string
song = "This is my life"
puts song.length

# Strip - Removes the white spaces on the left side and right side of the string
song = "   Welcome to my life   "
puts song
puts song.strip

# lstrip - Removes the white spaces on the left of the string
state4 = "      California"
puts state4
puts state4.lstrip

# rstrip - Removes the white spaces on the right of the string
state5 = "Californi     "
puts state5
puts state5.rstrip

# gsub - substitutes string value with the new string
kingdom = "Swaziland"
puts kingdom.gsub("Swazi", "Kenya")
puts kingdom
puts "----------"
puts kingdom.gsub!("Swazi", "Kenya")
puts kingdom