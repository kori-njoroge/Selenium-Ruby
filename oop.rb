# Model organized around objects rather than actions and data rather than login

# OOP TYPES
# 1. ENCAPSULATION - packing of data and functions into a single components
#   => Can be used to prevent modification of variables from objects
# Atttribute Accessory types
#  => Read only Access
#  => Write Access
#  => Read & Write Access.

# class Document
#     attr_accessor :name
#     def initialize(doc_name)
#         @name = doc_name
#     end

#     def set_name(new_name)
#         @name = new_name
#     end
# end

# doc1 = Document.new("ruby1.txt")
# puts doc1.name

# doc1.set_name("ruby2.txt")
# puts doc1.name

class Documents
    attr_reader :name
    def initialize(doc_name)
        @name = doc_name
    end

    def set_name(new_name)
        @name = new_name
    end
end

doc2 = Documents.new("ruby1.txt")
puts doc2.name

# doc2.name = "ruby2.txt" # did not update the name since it can only be read outside the class

doc2.set_name("ruby2.txt")
puts doc2.name

# 2. INHERITANCE - Child class inherits all the features of the parent class

# SUPER CLASS
class Box
    def initialize(w,h)
        @width = w
        @height = h
    end

    def display_box_name
        puts "I am the box class"
    end
end

# CHILD CLASS 1 - inherits the super class attributes
class SmallBox < Box
    def print_area
        @area = @width * @height
        puts "The area of the box is: #{@area}"
    end

    def display_price
        puts "My price is 1200"
    end
end

# CHILD CLASS 2 - inherits the super class but creates own constructor
class BigBox < Box
    def initialize(v,w,h)
        @volume = v
        @height = h
        @width = w
    end
    def print_area
        @area = @width * @height * @volume
        puts "The area of the big box is #{@area}"
    end
end

# Objects

puts("----------------------------------")
b1 = Box.new(12,15)
b1.display_box_name
puts("----------------------------------")

b2 = SmallBox.new(12,15)
b2.display_box_name
b2.display_price
b2.print_area
puts("----------------------------------")

b3 = BigBox.new(40,24,30)
b3.display_box_name
b3.print_area
puts("----------------------------------")