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

doc2.name = "ruby2.txt" # did not update the name since it can only be read outside the class

doc2.set_name("ruby2.txt")
puts doc1.name