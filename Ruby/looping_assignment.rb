# question 1 - Create a simple for loop in Ruby that prints "Hello World" 10 times.
10.times{puts "Hello world"}

# Question2 "city_array = ['New York', 'San Francisco', 'Dallas', 'Los Angeles', 'Seattle']
# Using for loop, print out each element of city_array."

city_array = ['New York', 'San Francisco', 'Dallas', 'Los Angeles', 'Seattle']

for city in city_array
    puts "City: #{city}"
end

# question 3 - Assume your number is 0. Now using while loop, start from 0 and exit out of the while loop once you reach your number(50).

x = 0
max = 50

while x <= max
    puts "Number is: #{x}"
    x+=5
end

# Question 4 - Assume your number is 0. Now using until loop, start from 0 and exit out of the while loop once you reach your number(100).

num = 0
limit = 100

until num >= limit
    puts "#{num}"
    num+=10
end