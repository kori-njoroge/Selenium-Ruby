# strings
name = 'Gideon'
puts name
puts name.class 

address =  "123 Main St."
puts address
puts address.class

# commenting in Ruby is done with '#'. Single line comments start with '#', 
=begin
multiline comments can be created by adding begin and end 
=end
# methods
greeting = "Hello, my name is #{name}"
puts greeting

length_of_address = address.length
puts length_of_address

first_letter_of_address = address[0]
puts first_letter_of_address

# PUTS AND PRINTS
# prints - Displays output in the same line.
# puts - Displays in a new line
city = "Miami"
print city
print address

