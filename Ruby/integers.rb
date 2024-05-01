# Integer is class of Ruby that holds the integer value or number.
# Integer in Ruby are basically of three types
# Fixnum – Numbers less than 2^62
# Bignum – Numbers greater than or equal to 2^62
# Whole numbers: 1,2,3,4

# 	Ex: 
# 	Age = 18
# 	Number = 36;

# INTEGER METHODS
# even?
# odd?
# to_s
# to_f


# Floating numbers - numbers with decimals
# FLOAT METHODS
# abs
# round
# to_s
# to_i

age = 20
puts age
puts age.class

# Integer Methods
# even? -Returns true if the integer given is even
puts age.even?

# odd? -Returns true if the integer given is odd
puts age.odd?

# to_s - converts the integer value into string value
no_of_apples = 5

puts no_of_apples
puts no_of_apples.class
puts "-----------"
puts no_of_apples.to_s
puts no_of_apples.to_s.class

# to_f - converts the integer value into floating number/ Works for floating point numbers as well
number = 22
puts number
puts number.class
puts "=========="
puts number.to_f
puts number.to_f.class

# FLOAT METHODS
# abs - returns absolute value of the floating number - method also works for whole numbers
numbers = -1100.01
puts numbers
puts numbers.class
puts numbers.abs
puts numbers.class

# round - rounds the floating number of the nearest integer value
grade  = 4.7
puts grade.round
# to_i - converting the fl=loating point numbe rto integer
digits = 54.674657846378
puts digits.to_i
puts digits.to_i.class