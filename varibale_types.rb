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

# 2. Class Varibles - used in classes, start with @@
class Customers
    @@no_of_customers = 0
    def initialize(customer_id, name, address = nil)
        @customer_id = customer_id
        @name = name
        @address = address
        @@no_of_customers += 1
    end

    def update_name(new_name)
        @name = new_name
    end

    def display_info
        puts "Customer ID: #{@customer_id}"
        puts "Name: #{@name}"
        puts "Address: #{@address}"
    end

    def display_no_of_customers
        puts "The number of customers is: #{@@no_of_customers}"
    end
end

# Creating the customers
customer3 = Customers.new(1, "Gideon Kori")
customer4 = Customers.new(2, "jane Doe", "123 Elm St Miami")

puts "**************************"
puts "Customer Information #{customer3.display_info}"
puts customer3.display_no_of_customers
puts "------------------------"
puts "Customer Information #{customer4.display_info}"
puts customer4.display_no_of_customers