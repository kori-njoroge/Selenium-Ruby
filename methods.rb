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


# Methods without default values

def prog_language(p1, p2)
    puts "the programming language is #{p1}"
    puts "the programming language is #{p2}"
end

prog_language("Ruby", "Js")

# Methods with default values
def prog_language2(p1 = "C++", p2)
    puts "the programming language is #{p1}"
    puts "the programming language is #{p2}"
end

prog_language2("ruby")
prog_language2("ruby","Java")