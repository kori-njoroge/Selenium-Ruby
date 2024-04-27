# Create an array that stores 20 floating number values such as 2.34, 7.89, 1.34 and so on. Create a class that contains methods that does the following action.

#  a. Display the sum of all the array elements

#  b. Display the average of all the array elements

#  c. Display the largest value of all the array elements

#  d. Display the smallest value of all the array elements

# Run your code and make sure the methods returns the correct value.

floating_array = [2.2, 1.3, 1.5, 22.5, 12.5, 12.5, 0.2, 75.23, 22.12]

class Array_methods
    # Sum fo the array elements
    def sum(my_array)
        sum  = 0 
        for x in my_array
            sum += x
        end
        return sum
    end
    # average of the array elements
    def average(my_array)
        sum  = 0 
        for x in my_array
            sum += x
        end
        return sum/my_array.length
    end
    #Largest element of the array
    def max(arr)
        max = arr[0]
        for i in arr
        if i > max
            max = i
        end
        end
        max
    end
    #Smallest element of the array
    def min(arr)
        min = arr[0]
        for i in arr
        if i < min
            min = i
        end
        end
        min
    end
end

new_array = Array_methods.new

puts "The sum of the array elements is: #{new_array.sum(floating_array)}"
puts "The average of the array elements is: #{new_array.average(floating_array)}"
puts "Largest element of the array is: #{new_array.max(floating_array)}"
puts "Smallest element of the array is #{new_array.min(floating_array)}"

# Create a class called Customer that contains the constructor method as well as the instance methods. Create two objects from the customer class. The customer should contain customer id and name which are mandatory, and address that can change.

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