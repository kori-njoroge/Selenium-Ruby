# ruby Methods are used to bundle one or more  repeatable statements into a single unit

# Method to add 2 numbers
def add(num1, num2)
    return num1 + num2
end

puts add(100,1)


friends= ["John","Mike","Jake","Jade"]

def greet(friend)
    puts "Hello #{friend}, welcome to my house"
end

for friend in friends
    greet(friend)
end

