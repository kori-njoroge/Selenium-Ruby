=begin
    Hash is a dictionary like collection consiting of unique keys and their values
    Hashes are also called Associative Arrays as they are similar to arrays but hash allows you to use any object type as index instead of integers like arrays does
=end

grades = {"John" => 3.6, "Jake" => 3.7}

puts grades["John"]
print grades.keys
puts " "
print grades.values
puts "-------------------"
# using The Value to find the key
puts grades.key(3.6)

# creating a new hash
h = Hash.new
h["Brandy"] = 3.9
h["Mike"] = 3.4

puts h
print hash
print h.keys
puts " "
print h.values
puts " "
# Iterating through the Hash
# puts grades.keys

for key in grades.keys
    if key == "John"
        puts "Welcome #{key}"
    end
end

grades.each {|element|
    puts "#{element}"
}


grades.each { |key, value|
    puts "#{key}'s grade is #{value}"
}