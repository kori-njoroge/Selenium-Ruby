# Types of Variables

# 1. Instance Variables -Used by instance methods, start with @
class Customer
    def initialize(customer_id, name, address = nil)
        @customer_id = customer_id
        @name = name
        @address = address
    end

    def update_name(new_name)
        @name = new_name
    end

    def display_info
        puts "Customer ID: #{@customer_id}"
        puts "Name: #{@name}"
        puts "Address: #{@address}"
    end
end

# Creating the customers
customer1 = Customer.new(1, "Gideon Kori")
customer2 = Customer.new(1, "jane Doe", "123 Elm St Miami")

puts "**************************"
puts "Customer Information #{customer1.display_info}"
puts "------------------------"
puts "Customer Information #{customer2.display_info}"