# question 1 - Create a simple for loop in Ruby that prints "Hello World" 10 times.
10.times{puts "Hello world"}

# Question2 "city_array = ['New York', 'San Francisco', 'Dallas', 'Los Angeles', 'Seattle']
# Using for loop, print out each element of city_array."

city_array = ['New York', 'San Francisco', 'Dallas', 'Los Angeles', 'Seattle']

for city in city_array
    puts "City: #{city}"
end