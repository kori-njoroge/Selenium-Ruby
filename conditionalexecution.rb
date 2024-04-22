# if else
weather = "Raining"

if weather.downcase == "raining"
    puts "Stay at Home"
else
    puts "Go for a walk"
end

# if -elsif -else
x = 15

if x <0
    puts "Negative Number"
elsif x > 0
    puts "Positive Number"
else
    puts "Zero!"
end

# Condtional expressions
# && - AND- Both condtions need to be true
# || - OR- One condition need to be true
# != - Not equal to
# == equal to


# AND

grade = 2.5

if grade == 4.0
    puts "You are an awesome student"
elsif grade < 4.0 && grade >=3.5
    put "A Student"
elsif grade <3.5 && grade >= 3.0
    puts "B student"
elsif grade < 3.0 && grade >=2.0
    puts " C student"
elsif grade < 2.0 && grade >=1.5
    puts "D Student"
else
    puts "You failed the class"
end

# OR

account_balance = 1000000
age = 75

if account_balance = 1000000 || age =75
    puts "Congratulations, you will retire now"
else 
    puts "You will need to save more money or retirement"
end
